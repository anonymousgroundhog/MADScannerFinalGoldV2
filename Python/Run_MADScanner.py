import os, subprocess, hashlib, shutil, time, Apps_Download, Get_App_Names

from datetime import datetime

# Android environment
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from xml.etree import ElementTree as ET
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient

def click_on_button_by_class_permission(driver, id):
        for elem in driver.find_elements(By.CLASS_NAME, id):
            if 'allow' in elem.text.lower():
                try:
                    print(elem)
                    elem.click()
                except:
                    print(''.join(["elem doesn't exist:",str(id)]))
                    continue

def click_on_screen_by_cordinates(driver, x, y, duration, pause_time):
	time.sleep(pause_time)
	try:
		TouchAction(driver).tap(None, x, y, duration).perform()
	except:
		print(''.join(['FAILED TRYING TO TOUCH POSITION: (', str(x), ' ', str(y), ')']))

# #################################################### REGULAR METHODS ##########################################
def Pre_Cleanup():
	os.system('rm ../Java/Classes/sootOutput/*')
	os.system('rm -rf ../Java/APK_Files_Signed_And_Injected_Logs/*')

def calculate_sha256(file_path):
    sha256_hash = hashlib.sha256()
    # Open the file in binary read mode
    with open(file_path, "rb") as file:
        # Read and update hash in chunks of 4K (memory efficient for large files)
        for byte_block in iter(lambda: file.read(4096), b""):
            sha256_hash.update(byte_block)
    # Return the hexadecimal format of the hash
    return sha256_hash.hexdigest()

def Compile_Framework_Code():
	cwd=os.getcwd()
	os.chdir('../Java/')
	os.system('rm -rf Classes/sootOutput')
	os.system('javac -d Classes -cp "../Jar_Libs/*" MyTransform.java BAnalysisApp.java SootExample.java SootTest3.java SootInstrumentationHelper.java Once.java SootUtil.java ClassLiteralMethodSourceonInit.java')
	os.chdir(cwd)

def list_directories(path):
    return [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d))]

def Function_Get_MainActivity_And_Write_To_File(file, folder):
	path=''.join(['../APK/',folder,'/',file])
	main_activity=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
	main_activity=main_activity.stdout.decode('utf-8').split('\n')
	main_activity = [item for item in main_activity if "launchable-activity" in item]
	main_activity = main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
	# print(main_activity)

	main_class=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
	main_class=main_class.stdout.decode('utf-8').split('\n')
	main_class = [item for item in main_class if "package" in item]
	main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
	
	# Open a file in write mode ('w')
	with open('APK_Details.txt', 'w') as file:
	    # Write text to the file
	    file.write(''.join(["Main_Activity: ",main_activity,"\n"]))
	    file.write(''.join(["Main_Class: ",main_class]))
	
def Function_Run_Framework_And_Zip_And_Sign_APK(file, folder, option):
	pwd=os.getcwd()
	os.chdir("Classes")
	SignedFile=''.join(['signed',file])
	APKPath=''.join(["../../APK/",folder,'/',file])
	print("\nAPK path is: ", APKPath)
	print("Current directory is: ", os.getcwd())
	path=''.join(['../../APK/',folder,'/',file])
	sdkbuild_version=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
	sdkbuild_version=sdkbuild_version.stdout.decode('utf-8').split('\n')
	sdkbuild_version = [item for item in sdkbuild_version if "platformBuildVersionCode=" in item]
	sdkbuild_version = sdkbuild_version[0].replace("package: ","").split(" ")[5].replace("compileSdkVersion=","").replace("'","")
	# sdkbuild_version=$(aapt dump badging $APKPath | grep compileSdkVersion | cut -d ' ' -f 6 | tr -d "platformBuildVersionCode='")
	print("sdkBuild Version: ", sdkbuild_version)
	# hash=$([ -e $APKPath ] && sha256sum $APKPath | cut -d " " -f1)
	print(calculate_sha256(APKPath))
	hash_value = calculate_sha256(APKPath)
	cmd=' '.join(['java -Xmx2g -XX:+ExitOnOutOfMemoryError -cp ".:../../Jar_Libs/*" BAnalysisApp', file, hash_value, option, folder, '-android-api-version 33'])
	os.system(cmd)
	os.chdir('sootOutput')
	path_to_check=os.path.join(os.getcwd(), file)
	print("Checking path:",path_to_check)
	if os.path.exists(path_to_check):
		# sign file
		print("PATH EXISTS!!!")
		cmd=' '.join(['zipalign -fv 4',file, SignedFile])
		os.system(cmd)
		# apksigner sign --ks ../../../my-release-key.keystore --ks-pass
		cmd=' '.join(['apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password', SignedFile])
		os.system(cmd)
		os.system("rm *.idsig")
	os.chdir(pwd)


def Get_Test_Instrumentation_Folder_Setup():
	pwd=os.getcwd()
	os.chdir("../Java/APK_Files_Signed_And_Injected_Logs")
	os.system("rm -rf *")
	# os.chdir('../')
	os.system("cp ../Classes/sootOutput/signed*.apk .")

	files=os.listdir('.')
	for file in files:
		this_dir=file.replace(".apk","")
		os.mkdir(this_dir)
		shutil.copyfile(file,''.join([this_dir, '/', file]), follow_symlinks=True)
		path_google_play = ''.join(["../../APK/Google_Play_Apps/",this_dir.replace('signed','')])
		if os.path.isdir(path_google_play):
			files= [entry for entry in os.listdir(path_google_play) if not file.replace("signed","") in entry]
			print(files)
			for f in files:
				path=''.join(["../../APK/Google_Play_Apps/",this_dir.replace('signed',''),'/',f])
				shutil.copy(path, this_dir)
	os.system('rm *.apk')
	os.chdir(pwd)

def Start_Instrumenting_Folder():
	pwd=os.getcwd()
	os.system('adb logcat -c')
	now = datetime.now()
	d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
	cmd=''.join(['nohup adb logcat FiniteState:V *:S > ../Data/Logs/',str(d4),'.txt &'])
	os.system(cmd)

	os.chdir("../Java/APK_Files_Signed_And_Injected_Logs")
	entries = os.listdir('.')

	# Filter out entries that are directories
	directories = [entry for entry in entries if os.path.isdir(entry)]
	for this_dir in directories:
		print(this_dir)
		app_name=''.join([this_dir, '/',this_dir,'.apk'])
		package_name=subprocess.run(['aapt', 'dump', 'badging', app_name ], stdout=subprocess.PIPE)
		package_name=package_name.stdout.decode('utf-8').split("\n")[0].split(" ")[1].replace("name=","").replace("'","")
		main_activity=subprocess.run(['aapt', 'dump', 'badging', app_name], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
		main_activity = [item for item in main_activity if "launchable-activity" in item]
		main_activity = main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
		print("Packcage:"+str(package_name) + " Activity:" +str(main_activity))

		os.chdir(this_dir)
		os.system('adb install-multiple $(ls signed*.apk)')
		phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
		phone_name=str(phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","")
		desired_capabilities = {
	            "platformName": "Android",
	            "deviceName": phone_name, #7040018020065015
	            "appPackage": package_name,
	            "noReset": True,
	            "autoacceptalerts": True,
	            "appium:wdaStartupRetries": 6,
	            "autoGrantPermissions": True,
	            "appActivity": main_activity,
	            "adbExecTimeout": 30000
		}
		
		driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities)
		source_xml = driver.page_source
		time.sleep(2)
		click_on_button_by_class_permission(driver,"android.widget.Button")
		source_xml = driver.page_source
		click_on_button_by_class_permission(driver,"android.widget.Button")
		app_activity = driver.current_activity
		print("Current activity is: "+str(app_activity))

		click_on_screen_by_cordinates(driver,366, 82.9, 2, 3)
		click_on_screen_by_cordinates(driver,384, 238.5, 2, 3)
		this_activity = driver.current_activity
		print("Activity is now:", str(this_activity))
		if this_activity != app_activity:
			click_on_screen_by_cordinates(driver, 582, 110, 2, 3)
			click_on_screen_by_cordinates(driver, 719, 127, 2, 2)
			click_on_screen_by_cordinates(driver, 363, 304, 2, 2)
			click_on_screen_by_cordinates(driver, 547, 809, 2, 2)
		cmd = ' '.join(['adb uninstall', package_name])
		os.system(cmd)
		os.system('pkill adb')
		os.chdir('../')


def Download_And_Return_Info_On_Apps():
	cwd=os.getcwd()
	appsdownload = Apps_Download.Apps_Download()
	appsdownload.Print_List_Installed_App_Packages()
	appsdownload.Set_Installed_Apps(['com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
	# appsdownload.See_Installed_Apps()
	appsdownload.Get_Apps_Phase()
	os.chdir(cwd)
	get_app_names = Get_App_Names.Get_App_Names()
	get_app_names.Set_Directories_To_Ignore(['BannerRecyclerViewExample', 'TestClassAdViewAdListener'])
	df = get_app_names.Return_DataFrame_Data() 
	print(df)

def Cleanup_Folders_After_Download():
	print("Performing Cleanup of Folders!!")
	cwd= os.getcwd()
	os.chdir("../APK/Google_Play_Apps")

	entries = os.listdir('.')
	directories = [entry for entry in entries if os.path.isdir(entry)]
	print(os.getcwd())
	for d in directories:
	    os.chdir(d)
	    print("\t dir is:", str(os.getcwd()))
	    # print(str(os.listdir()))
	    os.system("rm *.idsig")
	    os.chdir('../')
	os.chdir(cwd)



os.system('clear')
cwd=os.getcwd()
# Download_And_Return_Info_On_Apps()
# Cleanup_Folders_After_Download()

# Compile_Framework_Code()

# Pre_Cleanup()
# Test_Folder="Testing"
# option="apk"
# os.chdir('../Java')
# for file in os.listdir(''.join(['../APK/',Test_Folder])):
# 	print("File:",file)
# 	Function_Get_MainActivity_And_Write_To_File(file, Test_Folder)
# 	Function_Run_Framework_And_Zip_And_Sign_APK(file, Test_Folder, option)

os.chdir(cwd)
Get_Test_Instrumentation_Folder_Setup()
Start_Instrumenting_Folder()
# os.chdir(cwd)