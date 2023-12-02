import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob
# import Apps_Download, Get_App_Names, Copy_Files_For_Testing, Helper, MADScanner
import Copy_Files_For_Testing, Helper, MADScanner, Get_App_Names, Instrument_Apps_Gold_V2
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

def Run_MADScanner(copy_from_folder):
	madscanner = MADScanner.MADScanner()
	madscanner.Set_Apps_Installed(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
	# list_packages = madscanner.Download_And_Return_Info_On_Apps()
	# madscanner.Cleanup_Folders_After_Download()
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	file_list = os.listdir(''.join(['../APK/',copy_from_folder]))
	madscanner.Copy_Files_To_Test(file_list)
	os.chdir('../Python')
	helper = Helper.Helper()
	helper.Pre_Cleanup()

def Read_And_Save_Dataframe_Info(this_folder, copy_from_folder):
	Test_Folder=this_folder
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
		# print(file)
		path = ''.join(['../APK/',Test_Folder,'/',file])
		try:
			aapt_details=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
			main_activity = [item for item in aapt_details if "launchable-activity" in item]
			main_class = [item for item in aapt_details if "package" in item]
			# cprint(''.join(['Main activity is now: ',str(main_activity)]), 'green')
			if len(main_activity) > 0:
				main_activity = main_activity[0].split(" ")[1].replace("name=","").replace("'","")
			else:
				main_activity = ''
			main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
			base_url = 'https://play.google.com/store/apps/details?id=';
			sdkbuild_version = [item for item in aapt_details if "platformBuildVersionCode=" in item]
			sdkbuild_version = sdkbuild_version[0].replace("package: ","").split(" ")[5].replace("compileSdkVersion=","").replace("'","").replace('platformBuildVersionCode=', '')
			content_details = get_app_names.Get_Content_Using_BeautifulSoup2(''.join([base_url,main_class]), file)
			new_row = {'App_Name': file, 'Google_Play_Name': content_details[1], 'App_Category': content_details[3], 
			'Main_Activity': main_activity, 'Main_Class': main_class, 'URL': content_details[0], 
			'App_Ads': content_details[5], 'SHA256' : content_details[4], 
			'SDK_Build_Version': sdkbuild_version}
			df.loc[len(df),:] = new_row
			
		except:
			print(traceback.format_exc())
			continue

	print(df)
	df.to_csv('../Data/App_Category_Details.csv', index=False)

def Run_MADScanner_On_Apps(this_folder, copy_from_folder):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	madscanner.Set_Apps_Installed(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 
		'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 
		'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 
		'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 
		'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 
		'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 
		'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 
		'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 
		'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 
		'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 
		'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 
		'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 
		'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 
		'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 
		'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 
		'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 
		'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 
		'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 
		'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 
		'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 
		'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 
		'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 
		'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 
		'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
	# list_packages = madscanner.Download_And_Return_Info_On_Apps()
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
	for index,row in df_app_info.iterrows():
		file = row['App_Name']
		cprint(''.join(['\n\tRunning app:', str(index),'/',str(len(df_app_info))]), 'magenta')
		cprint(''.join(['\nFile:',file]), 'cyan')
		error_msg = ''
		try:
			sdkbuild_version = row['SDK_Build_Version']
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

def Run_MADScanner_On_N_Number_Of_Apps(this_folder, copy_from_folder, first_n_apps):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	madscanner.Set_Apps_Installed(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 
		'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 
		'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 
		'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 
		'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 
		'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 
		'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 
		'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 
		'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 
		'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 
		'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 
		'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 
		'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 
		'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 
		'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 
		'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 
		'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 
		'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 
		'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 
		'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 
		'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 
		'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 
		'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 
		'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
	# list_packages = madscanner.Download_And_Return_Info_On_Apps()
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
	helper = Helper.Helper()
	cwd= os.getcwd()
	df_app_info = pd.read_csv('../Data/App_Category_Details2.csv')
	df_app_info = df_app_info[df_app_info['MADScanner_Injected_Logs_Sucessfully'] == 'Yes']
	# df_app_info['Install_Error_Details']=None
	os.chdir('../Java/Classes/sootOutput')
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
		except:
			cprint("Error!!!", 'red')
			print(traceback.format_exc())

	os.chdir(cwd)
	df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Instrument_Apps():
	instrument_apps = Instrument_Apps_Gold_V2.Instrument_Apps_Gold_V2()
	instrument_apps.Set_DF_App_Info(pd.read_csv('../Data/App_Category_Details2.csv'))
	# print(instrument_apps.df_app_info)
	instrument_apps.Filter_DF_App_Info()
	# print(instrument_apps.df_apps_filtered)
	instrument_apps.Set_Path_For_Logcat('../Data/Logs')
	instrument_apps.Start_Logcat()
	instrument_apps.Instrument_Apps_In_Testing_Folder_Path()
	instrument_apps.Stop_Logcat()
os.system('clear')
# os.chdir('../')
cwd=os.getcwd()
helper = Helper.Helper()
# Run_MADScanner('APKPure')
# Read_And_Save_Dataframe_Info('Testing', 'APKPure')
# 
# MAKE SURE YOU ARE IN THE DIRECTORY PYTHON
os.chdir(cwd)
# cprint(os.getcwd(), 'red')
# Run_MADScanner_On_Apps('Testing', "APKPure")
# Run_MADScanner_On_N_Number_Of_Apps('Testing', 'APKPure', 2)
# Cleanup_Soot_Output_Folder()
# Check_If_App_Can_Be_Installed()

# helper.Remove_Empty_Logs()
helper.Move_Valid_APKS_To_Folder()
# Instrument_Apps()