import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob
# import Apps_Download, Get_App_Names, Copy_Files_For_Testing, Helper, MADScanner
import Copy_Files_For_Testing, Helper, MADScanner, Get_App_Names#, Instrument_Apps_Gold_V2
# import Instrument_Apps
from datetime import datetime
from termcolor import colored, cprint
from subprocess import run
# Android environment
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from xml.etree import ElementTree as ET
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient

def Remove_All_Files_From_Directory(directory_path):
	for filename in glob.iglob(''.join([directory_path, '/*.apk']), recursive=True):
	    os.remove(filename)

def Copy_Files_From_Folder_To_Testing_Folder(directory_path):
	Remove_All_Files_From_Directory('../APK/Testing')
	directory_path = ''.join(['../APK/',directory_path])
	files = [f for f in os.listdir(directory_path) if os.path.isfile(os.path.join(directory_path, f))]
	for file in files:
		file_path = ''.join([directory_path, '/', file])
		shutil.copyfile(file_path, ''.join(['../APK/Testing/', file]))
	# cprint('Files:\n'+str(files), 'green')
def Copy_Files_To_Testing_Folder():
	# Remove_All_Files_From_Directory('../APK/Testing')
	directory_path = '../Java/Classes/sootOutput'
	files = [f for f in os.listdir(directory_path) if os.path.isfile(os.path.join(directory_path, f))]
	for file in files:
		file_path = ''.join([directory_path, '/', file])
		shutil.copyfile(file_path, ''.join(['../APK/Valid_APK_Files_To_Test/', file]))

def Run_MADScanner(copy_from_folder):
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')
	madscanner.Set_Apps_Installed(installed_app_packages)
	# madscanner.Set_Apps_Installed(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
	
	# list_packages = madscanner.Download_And_Return_Info_On_Apps('../APK/Google_Play_Download_Test/') # THIS WILL RETURN ANDROID APPS LIST
	# print(list_packages)
	# madscanner.Cleanup_Folders_After_Download()
	
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	file_list = os.listdir(''.join(['../APK/',copy_from_folder]))
	madscanner.Copy_Files_To_Test(file_list)
	os.chdir('../Python')
	helper.Pre_Cleanup() #Uncomment this when done

def Read_And_Save_Dataframe_Info(Test_Folder, copy_from_folder):
	# Test_Folder=this_folder
	os.chdir('../Java')
	get_app_names = Get_App_Names.Get_App_Names()
	get_app_names.Set_Testing_Directory(copy_from_folder)
	# Define your columns
	# url, app_title, ', '.join(app_details), ', '.join(categories), sha256, contains_ads
	# columns = ['App_Name', 'Google_Play_Name', 'App_Category', 'Main_Activity', 'Main_Class', 'URL', 'App_Ads', 
	# 'SHA256', 'SDK_Build_Version', 'MADScanner_Injected_Logs_Sucessfully', 'Error_Message', 'Able_To_Install', 'Able_To_Instrument']
	columns = ['App_Name', 'Google_Play_Name', 'App_Category', 'Main_Activity', 'Main_Class', 'URL', 'App_Ads', 
	'SHA256', 'SDK_Build_Version', 'MADScanner_Injected_Logs_Sucessfully', 'Able_To_Install', 'Able_To_Instrument']

	# Create an empty DataFrame
	df = pd.DataFrame(columns=columns) 

	for file in os.listdir(''.join(['../APK/',Test_Folder])):
		cprint('\t File is Currently:'+file, 'green')
		path = ''.join(['../APK/',Test_Folder,'/',file])
		# print('path is currently:', path)
		try:
			aapt_details=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
			main_activity = [item for item in aapt_details if "launchable-activity" in item]
			main_class = [item for item in aapt_details if "package" in item]
			# cprint(''.join(['Main activity is now: ',str(main_activity)]), 'green')
			if len(main_activity) > 0:
				main_activity = main_activity[0].split(" ")[1].replace("name=","").replace("'","")
			else:
				main_activity = ''
			try:
				main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
			except:
				cprint("main class was unable to be found!!!", 'red')
				main_class=''
			base_url = 'https://play.google.com/store/apps/details?id=';
			sdkbuild_version = [item for item in aapt_details if "platformBuildVersionCode=" in item]
			if len(sdkbuild_version) < 1:
				sdkbuild_version = [item for item in aapt_details if "targetSdkVersion" in item]
				# print("sdkbuild_version:", sdkbuild_version)
				sdkbuild_version = sdkbuild_version[0].replace("targetSdkVersion:","").replace("'",'')
				cprint('current sdkbuild_version: '+str(sdkbuild_version), 'yellow')
				content_details = get_app_names.Get_Content_Using_BeautifulSoup2(''.join([base_url,main_class]), file)
				new_row = {'App_Name': str(file), 'Google_Play_Name': content_details[1], 'App_Category': content_details[3], 
				'Main_Activity': main_activity, 'Main_Class': main_class, 'URL': content_details[0], 
				'App_Ads': content_details[5], 'SHA256' : content_details[4], 
				'SDK_Build_Version': sdkbuild_version}
				df.loc[len(df),:] = new_row
			else:
				print("sdkbuild_version:", sdkbuild_version)
				sdkbuild_version = sdkbuild_version[0].replace("package: ","").split(" ")[5].replace("compileSdkVersion=","").replace("'","").replace('platformBuildVersionCode=', '')
				content_details = get_app_names.Get_Content_Using_BeautifulSoup2(''.join([base_url,main_class]), file)
				new_row = {'App_Name': str(file), 'Google_Play_Name': content_details[1], 'App_Category': content_details[3], 
				'Main_Activity': main_activity, 'Main_Class': main_class, 'URL': content_details[0], 
				'App_Ads': content_details[5], 'SHA256' : content_details[4], 
				'SDK_Build_Version': sdkbuild_version}
				df.loc[len(df),:] = new_row
			
		except:
			print(traceback.format_exc())
			continue

	# print('Finalized Dataframe')
	print(df)
	df.to_csv('../Data/App_Category_Details.csv', index=False)

def Run_MADScanner_On_Apps(this_folder, copy_from_folder):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')
	madscanner.Set_Apps_Installed(installed_app_packages)
	# list_packages = madscanner.Download_And_Return_Info_On_Apps('../APK/Google_Play_Download_Test/') # GET UNIQUE LIST OF APPS
	# print(list_packages)
	# madscanner.Cleanup_Folders_After_Download()
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	# Copy_Files_From_Folder_To_Testing_Folder(copy_from_folder)
	# os.system('rm ../APK/Testing/*')
	# cmd = ''.join(['cp ../APK/', copy_from_folder, '/*.apk ../APK/Testing'])
	# os.system(cmd)
	option="apk"
	# option="j"
	Test_Folder = this_folder
	df_app_info = pd.read_csv('../Data/App_Category_Details.csv')
	cprint("test folder is: " + str(Test_Folder), 'green')
	# print(df_app_info)
	# df_app_info = df_app_info[df_app_info['App_Ads'] == 'Yes']
	folder_path_for_testing = ''.join(['../APK/',str(Test_Folder)])
	# files_of_interest = [item for item in df_app_info['App_Name'] if item in str(os.listdir(folder_path_for_testing))]
	files_of_interest = [item for item in str(os.listdir(folder_path_for_testing)) if item in df_app_info['App_Name']]
	# print(df_app_info)
	os.system('rm -rf ../Java/Classes/sootOutput')
	for index,row in df_app_info.iterrows():
		print(row)
		file = str(row['App_Name'])

		cprint(''.join(['\n\tRunning app:', str(index),'/',str(len(df_app_info))]), 'magenta')
		cprint(''.join(['\nFile:',file]), 'cyan')
		error_msg = ''
		sdkbuild_version = row['SDK_Build_Version']
		try:
			error_msg = madscanner.Function_Run_Framework_And_Zip_And_Sign_APK(file, Test_Folder, option, str(sdkbuild_version))
			os.chdir(pwd)
			# print(file, ' ', sdkbuild_version)
			if error_msg != '':
				df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
				# df_app_info.loc[index, 'Error_Message'] = ' '.join(error_msg)
				helper.Write_APK_Error_To_File(file, ' '.join(error_msg))
				cprint(error_msg, 'red')
			else:
				df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'Yes'
		except:
			cprint(''.join(["Unable to Run framework for:", file]), 'red')
			df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
			print(traceback.format_exc())
			os.chdir(pwd)
			continue

	print(os.getcwd())
	os.chdir(pwd)
	df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Run_MADScanner_On_Apps2(this_folder, copy_from_folder):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')
	madscanner.Set_Apps_Installed(installed_app_packages)
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	option="dex"
	# option="J"
	Test_Folder = this_folder
	df_app_info = pd.read_csv('../Data/App_Category_Details.csv')
	cprint("test folder is: " + str(Test_Folder), 'green')
	folder_path_for_testing = ''.join(['../APK/',str(Test_Folder)])
	files_of_interest = [item for item in str(os.listdir(folder_path_for_testing)) if item in df_app_info['App_Name']]
	# cprint(files_of_interest,'yellow')
	os.system('rm -rf ../Java/Classes/sootOutput')
	for index,row in df_app_info.iterrows():
		print(row)
		file = str(row['App_Name'])
		cprint(''.join(['\n\tRunning app:', str(index),'/',str(len(df_app_info))]), 'magenta')
		cprint(''.join(['\nFile:',file]), 'cyan')
		error_msg = ''
		sdkbuild_version = row['SDK_Build_Version']
		try:
			# if file.__contains__('banner_example'):
			error_msg = madscanner.Function_Run_Framework_And_Zip_And_Sign_APK(file, Test_Folder, option, str(sdkbuild_version))
			os.chdir(pwd)
			print(error_msg)
			# print(file, ' ', sdkbuild_version)
			if error_msg != '':
				df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
				helper.Write_APK_Error_To_File(file, ' '.join(error_msg))
				cprint(error_msg, 'red')
			else:
				df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'Yes'
		except:
			cprint(''.join(["Unable to Run framework for:", file]), 'red')
			df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
			print(traceback.format_exc())
			os.chdir(pwd)
			continue

	print(os.getcwd())
	os.chdir(pwd)
	# df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Run_MADScanner_On_Apps_Jimple_Only(this_folder, copy_from_folder):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')
	madscanner.Set_Apps_Installed(installed_app_packages)
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	# option="dex"
	option="J"
	Test_Folder = this_folder
	df_app_info = pd.read_csv('../Data/App_Category_Details.csv')
	cprint("test folder is: " + str(Test_Folder), 'green')
	folder_path_for_testing = ''.join(['../APK/',str(Test_Folder)])
	files_of_interest = [item for item in str(os.listdir(folder_path_for_testing)) if item in df_app_info['App_Name']]
	# cprint(files_of_interest,'yellow')
	os.system('rm -rf ../Java/Classes/sootOutput')
	for index,row in df_app_info.iterrows():
		print(row)
		file = str(row['App_Name'])
		cprint(''.join(['\n\tRunning app:', str(index),'/',str(len(df_app_info))]), 'magenta')
		cprint(''.join(['\nFile:',file]), 'cyan')
		error_msg = ''
		sdkbuild_version = row['SDK_Build_Version']
		try:
			# if file.__contains__('banner_example'):
			error_msg = madscanner.Function_Run_Framework_And_Copy_Jimple_Files(file, Test_Folder, option, str(sdkbuild_version))
			os.chdir(pwd)
			print(error_msg)
		except:
			cprint(''.join(["Unable to Run framework for:", file]), 'red')
			df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
			print(traceback.format_exc())
			os.chdir(pwd)
			continue

	print(os.getcwd())
	os.chdir(pwd)
	# df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Run_MADScanner_On_N_Number_Of_Apps(this_folder, copy_from_folder, first_n_apps):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')
	madscanner.Set_Apps_Installed(installed_app_packages)
	list_packages = madscanner.Download_And_Return_Info_On_Apps('../APK/Google_Play_Download_Test/') # GET A UNIQUE LIST OF APPS
	# madscanner.Cleanup_Folders_After_Download()
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	# Copy_Files_From_Folder_To_Testing_Folder(copy_from_folder)
	# os.system('rm ../APK/Testing/*')
	# cmd = ''.join(['cp ../APK/', copy_from_folder, '/*.apk ../APK/Testing'])
	# os.system(cmd)
	option="apk"
	Test_Folder = this_folder
	df_app_info = pd.read_csv('../Data/App_Category_Details.csv')
	# df_app_info = df_app_info[df_app_info['App_Ads'] == 'Yes']
	files_of_interest = [item for item in df_app_info['App_Name'] if item in str(os.listdir(''.join(['../APK/',Test_Folder])))]
	# print(df_app_info)
	os.system('rm -rf ../Java/Classes/sootOutput')
	
	for index,row in df_app_info[:first_n_apps].iterrows():
		file = row['App_Name']
		cprint(''.join(['\n\tRunning app:', str(index),'/',str(len(df_app_info))]), 'magenta')
		cprint(''.join(['\nFile:',file]), 'cyan')
		error_msg = ''
		try:
			sdkbuild_version = row['SDK_Build_Version']
			error_msg = madscanner.Function_Run_Framework_And_Zip_And_Sign_APK(file, Test_Folder, option, str(sdkbuild_version))
			os.chdir(pwd)
			if error_msg != '':
				df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
				# df_app_info.loc[index, 'Error_Message'] = ' '.join(error_msg)
				helper.Write_APK_Error_To_File(file, ' '.join(error_msg))
				cprint(error_msg, 'red')
			else:

				df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'Yes'
		except:
			cprint(''.join(["Unable to Run framework for:", file]), 'red')
			print(traceback.format_exc())
			os.chdir(pwd)
			continue

	print(os.getcwd())
	os.chdir(pwd)
	df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Cleanup_Soot_Output_Folder():
	directory='../Java/Classes/sootOutput'
	for filename in os.listdir(directory):
		# Construct full file path
		file_path = os.path.join(directory, filename)

		# Check if 'signed' is not in the file name and if it's a file
		if 'signed' not in filename and os.path.isfile(file_path):
			# Remove the file
			os.remove(file_path)
			print(f"Removed: {file_path}")

def Check_If_App_Can_Be_Installed():
	# os.system('rm ../APK/Valid_APK_Files_To_Test/*.apk >/dev/null 2>&1')
	cprint("In Check_If_App_Can_Be_Installed()!!!", "yellow")
	cprint(os.getcwd(), 'yellow')
	helper = Helper.Helper()
	cwd= os.getcwd()
	df_app_info = pd.read_csv('../Data/App_Category_Details.csv')
	# df_app_info = df_app_info[df_app_info['MADScanner_Injected_Logs_Sucessfully'] == 'Yes']
	# df_app_info['Install_Error_Details']=None
	os.chdir('../Java/Classes/sootOutput')
	cprint(df_app_info, 'red')
	for index,row in df_app_info.iterrows():
		file = ''.join(['signed',row['App_Name']])
		package_name = row['Main_Class']
		try:
			print(file)
			print(os.getcwd())
			cmd = ' '.join(['adb install', file])
			data = run(cmd, capture_output=True, shell=True)
			error_msg = data.stderr.decode('utf-8').split('\n')
			if len(error_msg) > 1:
				df_app_info.loc[index, 'Able_To_Install'] = 'No'
				# df_app_info.loc[index, 'Install_Error_Details'] = ' '.join(error_msg)
				helper.Write_APK_Install_Error_To_File(row['App_Name'], str(error_msg))
				cprint("Unable to Install!!!", 'red')
				cprint(error_msg, 'red')
			else:
				cprint("Able to Install!!!", 'green')
				# cprint(error_msg, 'green')
				df_app_info.loc[index, 'Able_To_Install'] = 'Yes'
			cmd = ' '.join(['adb uninstall', package_name])
			data = run(cmd, capture_output=True, shell=True)
			apk_folder_to_copy_to_path = '../../../APK/Valid_APK_Files_To_Test/'
			shutil.copyfile(file, ''.join([apk_folder_to_copy_to_path, file]))
		except:
			cprint("Error!!!", 'red')
			print(traceback.format_exc())

	os.chdir(cwd)
	df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Instrument_Apps():
	instrument_apps = Instrument_Apps_Gold_V2.Instrument_Apps_Gold_V2()
	instrument_apps.Set_DF_App_Info(pd.read_csv('../Data/App_Category_Details2.csv'))
	print(instrument_apps.df_app_info)
	instrument_apps.Set_Overide_Contains_Ads(True)
	instrument_apps.Filter_DF_App_Info()
	print(instrument_apps.df_apps_filtered)
	instrument_apps.Set_Path_For_Logcat('../Data/Logs')
	instrument_apps.Set_Copy_From_Folder_Path('Valid_APK_Files_To_Test')
	instrument_apps.Start_Logcat()
	instrument_apps.Instrument_Apps_In_Testing_Folder_Path()
	instrument_apps.Stop_Logcat()

def Copy_Apps_To_Folder_For_Testing(lst_directories):
	lst_apps=['003483FF2A74BF9B2AA6CC20850DF8D0EA0EEDC16089E6B65159D692157E658C', '0069A3CFFC419660BF6D820E3D4B2337C5EB94E07C3867AB0FA5A3106E7DA51A', '1D1094028D6D533F7F7F3E5F9D8B094EAE1935573DE51BD6A96B5EBAFCD4244A', '1FEB7E6DD377ED31C3829E0CD54BD0C683B1A4A60673F4E77AA5336BFD714E70', '209943B80D67E5453F7A551271A2BDE36EDD1DA7A8564D7F197CBE4320B32E51', '07F006DC007E55DF653CFAA46FB90BC9B94E337E625FA660E9999984E1EF26BA', '2325BCD1B9460D842B1D7BA9730BC30FB51D24430C470907640CD2ACEF48B2D1', '09D077DA067D3015961E3B5C7B707DEFA2580BC24A1D83EA45FDE3834B337FBD', '2466BBC72F8EE6836ECD22770FE65DCAE5C335F81B6F78C11D4DF38C449B96DB', '09F160988025C302ACCAC9547D0401AF7546828CEF4F69D32B6E82FF9C480533', '0BC167335F1F593ECD96CC06043241B2CBFD87D6F3DC511FABF9CE8C5B5F6B40', '0DD61CB1F71AE9AFF6A8DC67DEA84CBD0317E3AEF95C875A8E022EC8267EF695', '0F3C5767CE8818265193F277A0EF380F24A0CABAB46708F069760E536D520F4A', '1155FC5D3EA8FFF10600DDD9696B635CE626F4C1805014A7A735C941AF3ACCA7', '124B59E0D0B52EB74D03B91D7D03DC90699702C5DA8D7AD7056A4A3B74F015FD', '2C338A77F0EFF6B811433351889D2574CDB6F56D93E6806FFE03FCDE2F8C863F', '2CEBE434ED178C6F2ED1B281AA262DAF4F5743FA267BAFFAFB1E7057A258A415', '2D1D76CAEF282E40AE76FCAD2FFA94BD18690ABD652E804A6562AE9020345109', '15C52213250ECBE4D72C6FEEB5B8B8F0704835EEFD9B6F935A96FC9FD79DCF0E', '15F4DFFBBB9826762117802BC9225193EF0A474D327F89183ECBE7C5D2F9C90E', '2E21E23EF46D9C4773EAEEF05749491C8E032C7F134EF6011A3D922A7DA693FE', '2EC0C2DF0F834A5A863C4E326CCA06DE66A4A5669B2E59EC8BA4A7C6F412E64A', '19B3C283B02B627DA6CFEDD2EA6CF1A14A7DBEA1237BD0E14651C5FD8AC9A25C', '1BD00DB9F98B4F3BBF3F79A438AF50A9D241ADAD22A12A8D363F02E1A592C3DF', '1C4A01582AE49DF4C892F585386B6ED0FFB6F6489F4C428634A54958578B6892', '02515B1154BD5D878E667D493DF346B4C39EA5C47D07F5C528625FC321F42F28', '101AE6217698A8A9639BDFD13C30B6C4188AA6E92F4A9E365515BD3C5A6C4B0E', '2CA414340473F9E706848CC75EE3D8A58B1FBE33A8B0E60EE0BB30B877A7B8D5', '2CDA9850E073E5212B28F569580C6DE667C8890751B0E0E43CADCF9297FE5B91', '16E7655E59B6300C942B7046874066C58EBE9E693AC9FEA6AC18CEE70B784440', '17C90C42DC54C6F2B2970F9ADC597B8D0E0E23739F0C1E966E3D0B2246206211', '1A8812BC583CD77C61EE641165A561C3F1828CE1EC41F3BFA8939B9515E24EE6', '1C62374EAE79544BFACD47FD4EA6313619E2E6987C2DF23AE6FB71478FD6C4BB', '1CF0BDEA7AB44EB59F3D4A046D5AF95C0B6FD9BE5410C2C389ED60964BAFC6A0', '02B94928D67D4332E5822551565CAC0F538786E363B5C88ADFCDC5FA3AC4D017', '030E96078A1F51ECFDA52B45AE14BBB14DA688B71081CE54603BE3EC7CC09B87', '03B6EBB3E4FA431476FC2DE565D1F27464CD0888AC06A9551DB036CBD08EEE1E', '07CD496037AE25FE132C0C4D7BD49742A8754AAC7D42839A96B62736054F6EB3', '2229E38EE0AE1A4C7597A323B680137E2EAE00E29279B1AA9EAADCE90EBEE967', '09D2ADF8AF1448A5E98D9E09F76218E3AF6A4D585FBA3B20B120E95740C5FC03', '2540B571F900A4BA90FFF2EA7526015C7E49E3CD6AC050D684C46A34F3BE3A10', '0DFC4B4676053AF9FAAC8D7AEBDF949F6A028B6B144207C6AC968557663F833C', '295EAF8C49997AF6D32F4C775D847DAAA508A1B0E2524107863DB962C82ABA44', '2BE0F04BCFA294E64E4EA0A5266E4A790DCF828F0A2D7F5E2A7A80BD5B75DCA5', '2C2426F665796E28B39B0321735F461929087B43DDB19CCB1320824D1EE4220F', '153C729BD24862EB3A0FFD785344760DE34482153B83C0432970E425C5FD6399', '15BE8128AF75CEDA8F9E8A10CC27750D11BE264D5B075FEA13658E3A41A5CE12', '1694177A89D82C3AAA439440AA9E4E849648EB12013597DCF48BA9FCDE2447D6', '1909E8577D22FB50F0097539715121F79C5CD65120BD0AFF5BC96C1BCC113331', '0311BF9C8362A953247EB62B081059C23437B5850AE413CAF0285C67A1CDD52E', '0468A367CA1F5ECFBE35DEB6081C814400FE119AA94924A0C6E6F7D64D7F4BDF', '05B2499AB58C66C3EB6FB1098B79EB29521FEC658ACCF92E87BA13F01590FE42', '1F986835F422708AAA5B8B051B83E6B1E555AA4C482F9DBAE5DF0F13B87D6F76', '05C9575AADFBC41A1205580E3BF5CC7091719E4CFDC0A4245D6E6180163DE260', '26C9193B989249B5B367E6AB10BD628858C8DFC31C50C5294EF1B4E46178F9F2', '26D2CB06FE4E503A80E9DE73F4AF21CD9C089039310E5DB4CCF505BEC9429C78', '2B7BE5D1025AE9F48D365BB191A31A526796B2BC1F85D2461B2F891470513351', '2B89A45769DA200B5FCEAE4DBB324433A3D4FE769C6EF4DBF3268086C6B117DB', '2BD6A9A975D6DDB322104A35181AB018D2DA45F9FF2C09AE40C4598C985FA43B', '30B2A892E57B6B1B81F216D92CA3BFC938E42C66B730EF4A6C95CF4FB3F45B22', '07FEDACF80C0B72F0B5D351FF3CE2CA34D6FB6724DABC85296C9D411984ED572', '0AC6E4ABD31A8170FAD329C7A1DB9BFA06CC879168BBD5037862DBF2968CF1E5', '11E158E5C7D32666A753F0E69A8E546D9B44E83F0FF66DFDE0DD311A415D120F', '31374F2D55133AB14E8727E83B20DD9DF67B923656D66EC069238C71D398B972', '2669166FD902967B9507DDD14213E8B4D4CAAF98520D2304945863D865159740', '10F252B1DED5430799A57928B8B6300C15B445431F50F221103DDC7C4367EE39', '1A277ECE817DCF1F7BB1E0F75A9A94637CAD740F13CCAA6EDCD6361EC91E01B5', '14BFF18B072C20B908197B9CE16C3271F7CCB77B5ED13C92C8853D6ED2626C07', '27948DE94F5099EBE68C6BCF30E5A46FF178084B195D5497AF31501E33163374', '27D133FC7A65F333C33F5B09DC7C22E045ECF55201B9FD55A8E0AF6EBF69DFE6', '0C01126C72E8CEABB6727ED1CCCC82A365AEAA416BE21DAC5661597AB7037B6B', '233E1C9BC76DA49003484AD56171AAB33617D2F6D4E3C76AACA96D4DB344DDE6', '1A9CC52FFA460B0DE8DE03146A10FE2F21BC45FAB16C4A075C82CB65841BA548', '279C30661CFA2C0A915EAF725005C137D5FB59457E0AFE104F26F671DA43784A', 'a070a78a18adc558d7f3a279a12d3f44a6012fe1cbe7db83aa04dd24a66d261d', '20348887e8a6f898b828e06c97f2515afbaa55ebd4dab550d81309d27eb75f7c', '3d048d40c9bb5f536acb6395350502b31eede8a24966b1ce1c04cc189106d14e', '6700f8b5a3c4163d26281d33ad3b965dd315e9e4229d16c412fe7dc02326c8ff', 'e205ef1583193c642f1cae8086665e43c96067fb972844ab5a4c4fe77f627937', '23407e8712716302835e217065c72d8df1598f1124ad50e2d0117e1284617f8a', '9aff64a69f94a56ca65f181089ee0b86bfd1e92e693b8a2f38ebce6fadc13afd', '6cd2117dc5101d5a232f3ff4095c7dc03419fec825c565830dc5e59ea846497e', '3456925d75803e1368d36dec9f18e71567a0d007333e9a92072301ca448adbe2', '324d90de3630cbf4839ef8e0e3c555453e8528f383aac0b5718c66c6b833498f', 'fb9a5cbf857119fc12f76ebe87b7653da402c531d120e31f87d33e2222c921e4', '1768cb8658cfaec3eb9dff7bb5b7d5ef4305401ef6242a63e49a3e49f43d878b', '967b32d1527df23d46cb719e95f016ae31168a650c1ba4c214caf083caeeeb12', '5fb021386529a98f9a78b96f2555943247c369bb4ad1597e51a0af9a53bb9ddd', '9596ec5a7a9bfe426cab0020615dbe16048de5f8d9341091730cb1a6dbfd478b', 'b0ab2a56d4f8969d8babbea1ca223dfe5ec2d0a4bc20f68021e9f0296432bf23', '6e5ba47c50486f34fa1b8070e89a8f99194f97a5b97b64eca3ecfbed8724c539', '994ead5cb4340fec69da38bfa4ac301f48461dc8ae3147146c1621eb6977c18e', '58fabeeb12709d59771e982dc385c65d7dd203ec185e8e54645c9c7ac1cd3368', '05e829cbcdf0fe20fea0b95cc48706c49586e1823ffa2c738d9c6424222e151f', '996f3e8a045b36a2a77f00367e9768279c2241e271ba3924cfd74121dc651d32', 'a6a349fc7a04002c3fd29a7afc4b10223a2f923602d990f45764f1e4f6265776', 'c341379beb487f5731c26f8b01156192e9e4b7ae589724d87752bec5e419cca8', '0c21f6d60e23b0fa05150aadace148b5bcd282f222a84b020a206c24e869f25f', '9e9bc8fd2b49b1587bbf4cbcbbee0a59ff3ff9b67086ecf2227be802a56f4ab1', '4e4b068824b6b006c5364efe2440c15bb3e778a5a90bad5a741486e6eba9e7fa', 'f0d55888adce2e8534f4d939f533f72e10a1895ac12cd248cb1982042e857ab6', '831402cc8b3e4e3d90be3c3e1a22b15b52d4560e09a34b6d5c2db5c3823823b3', '6f0fc1d0fe5b1563bfe016bd290adb934c6b14e35375a4ecfd3f00933bbab4a5', '4d096ee25b14689a3cfc9748cd7d11ef0a9eb772302a1dab4526d7c51922adda', 'd4f289bb931c0de87bdaf53b462142b6e12b84ba223957c02ff30732d4d8f204', 'efefa12d9d8acc70781f930f7dae2c4443686777f82565acb3f6d9aac123e64f', 'a9411de8a35b8c6e13f43ca4dbe620cff1f9b65938c1237e418a35b989c20992', '40627fad47208e13ff7955035d04715ba5b4eebde6c5a19701777458539c1063', '2ccb7ec12dc68a705abc7ae6a1fae754b69c106c06788c9dc8e1a0bb02168d93', '2d75532cae69d6ccc4948deabffae6c0f023412fc79da52e8381524382bdff2c', '643bc9f1f4b40d5ed93a9c1e6257bcb4cd2b737addab1f1f2eb5a5654ae69760', '8b00765bfced4e65debba10970d8fe7cf12f62b008e7aec2b8847d9e65d94d59', '7279d408e617c7e9eea64a15a25b754687ca882d00b65309e716f1b99785184a', '38589b4695d96465c413d4da9436bb0bd4bd2f828e6fe93d2c41f629b7d1791e', 'ffe335681a8a2208272a6fc449e045ff0fcd6cd888fed019d3b709f56bff4da6', '968d255bd6c310002782d9b16cda86d4a3e05917bfb34827f09b7cc5997a60d7', '21389f1bd3f9fc313dd6e169bc431c5ec287423279537d26ef17d8177db0aac8', '93239a8bf32f3c909348aadb026671add11c825e004e82ba08db5a19cd6e2de4', 'd5e6ebb9c640a6c2c9bf64c4e6d61d046c9abe45b3b6661b4fd670385f53e4e4', 'fef6af198f5501036d0df8053505107ff93d1245b9ec373105971e571a23a580', 'abf86ca642dd75bff1f9df756cccf851cea157a438157816c0ad665a79f5d26c', '2c64ca049a120a7421100aa0b67c199519a108ccb6046c441a7e456a4b97f42a', '42643b9d8b40b50d5a37c4b6dbf846f6ed9828d0b41fc39ec5bc976035a09e96', 'cf9ed4a78ae98f9517332a14e8dbf629734d4b44633e22304b5428f6d0a1589e', '5bb894104924433a374e0a18e2aa9d319009233e5c7a60896855e59345418ff8', 'eb873afb8d0fd5e28f1a908fa37a247cd49b9f5e7afe6c703c94291c8561d46b', '5e0b94fe2ccc7730fdab6542ef461e05bca0b5de9ce8ea7f40e24800de70b4d8', '0c75eea3e74e4bd1bc697f454e6eae9902b664e00470f025cc7f94ffa7e55d37', 'd1028cd43b77535329ae74432efcd0287b4d89426080a5eabaaaced70f5aebdf', 'acbeea5ba5b1cc7eff0091a694c6d86c35c0ba69d9deee55c37513f7d3e5eb9e', '49b33c25a201d5e9f5ed50186607ab622f3c4ef44089bc214535bf561bd3fd43', '652aa32ee11dd109f11feef942fa4207306b1651e8f342e047cf450d8ae7b9a5', 'c5694e5755b3bfc96e09ee0dbd6fe0acda968c347c30f8d6e29a2e073a54c50b', '9ccf78d18f17eab959b73d275e71487fe79d1228dfba12a1b4dbee8e340153fe', '29b9147e81930a943a9a8c37ac30def5f89e20841b2b75d4e7546bd7ea0332d3', '2c0e6503507af7ac11accb81b4400d822366df3837be09456ebde1a99c892b14', 'f45949e07bc66c6a5a345250b0da89a382ae7bf4ff1db26c923a99df25359ef7', '8dfd2ddbae23bd01783df6df16801c094b7e6503b0dee2651ea1d72f80f27bd6', '2bc016b74e4687e0775b147a6e54d66702241eecb66ac0a4093f24b6f397ab82', '324d90de3630cbf4839ef8e0e3c555453e8528f383aac0b5718c66c6b833498f', '826b0aee01a5f60eceacc29f8dcb3a776f6088b834ee0e66313138cff2d289e0', '6ce0dc7c8098e37ae9f9182f4bc9c2d44f36bcb6e4a252279fcc848a1bb3eaae', '5b4f30ffb919927f5d66297571fb43fd2e3fa8991677d736a65639b792c47607', 'd205cbf7bcd7b0f11ec10dd00333a8d4a99dfd14ad82b6a4636910b8db03907a', 'f0fe4b06acbdf49b5340ef13a9f106906efc520e6ab353219c4725c6cc36ade7', '15efb6f40b69f3fc9c53c94dca8198f4707e1a6366be8cf141d90060c599f756', 'fc589cb851fec04627732c7474a4c0a7c9e923f3a8a092ca9b798f987ecf17a0', '6a5f9e907f286cc6f3bbba5e855f857b951a789c5ad88c6c4ba86ab93cef5f19', 'e205ef1583193c642f1cae8086665e43c96067fb972844ab5a4c4fe77f627937', '5a2b15e38cea748014d7a1edffa92a6632555f0f3c6607ae033f18118962d96c', '4171a34b3c6c63c8c39e62537eef7fc9113f7af3a6f65d03522eb25298cd6480', '315a1b2bf30b96fec19ff181451958f0543c548492a320483c23ea7f91e55bcf', 'b4173228ac21dfb59e5c080eea32ec97542e7b8fdda88d6524846ca782034cef', '164605c201e064850bb777b8a49d51da99c006092182e94f184c92ad8bc687f9']
	copy_to_path='../APK/Testing_Library_Checks/'
	for app in lst_apps:
		app_name = ''.join([app, '.apk'])
		for this_dir in lst_directories:
			path=''.join(['../APK/',this_dir])
			if app_name in os.listdir(path):
				full_path=''.join([path,'/',app_name])
				shutil.copy(full_path, copy_to_path)
				print(full_path)

os.system('clear')
# os.chdir('../')
cwd=os.getcwd()

helper = Helper.Helper()
# helper.Remove_Directory_Files('../APK/Androzoo_Testing')
# Run_MADScanner('Google_Play_Download_Test')
Run_MADScanner('Androzoo_Testing')
Read_And_Save_Dataframe_Info('Androzoo_Testing', 'Testing')

# ## MAKE SURE YOU ARE IN THE DIRECTORY PYTHON
os.chdir(cwd)
Copy_Apps_To_Folder_For_Testing(['Androzoo', 'APKPure'])
Run_MADScanner_On_Apps_Jimple_Only('Testing_Library_Checks','Testing')
# Run_MADScanner_On_Apps2('Androzoo_Testing', "Testing")

# directory='../Java/Classes/sootOutput'
# if os.path.exists(directory):
# 	Cleanup_Soot_Output_Folder()
# 	# Copy_Files_To_Testing_Folder()
# 	Check_If_App_Can_Be_Installed()