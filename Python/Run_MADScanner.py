import os, subprocess, traceback, hashlib, shutil, time
# import Apps_Download, Get_App_Names, Copy_Files_For_Testing, Helper, MADScanner
import Copy_Files_For_Testing, Helper, MADScanner
# import Instrument_Apps
from datetime import datetime
from termcolor import colored, cprint

# Android environment
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from xml.etree import ElementTree as ET
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient


os.system('clear')
# os.chdir('../')
cwd=os.getcwd()

madscanner = MADScanner.MADScanner()
madscanner.Set_Apps_Installed(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
list_packages = madscanner.Download_And_Return_Info_On_Apps()
madscanner.Cleanup_Folders_After_Download()
madscanner.Compile_Framework_Code()
# # os.chdir('../')
# cprint(cwd, 'green')
madscanner.Copy_Files_To_Test(['com.einnovation.temu', 'com.naver.linewebtoon', ' com.tayasui.sketches', 'com.aige.hipaint', 'com.enflick.android.TextNow', 'com.overdrive.mobile.android.libby', ' jp.ne.ibis.ibispaintx.app', 'com.bf.aistory', '  com.genius.gifMaster.gp', 'com.PixelStudio', 'org.readera', 'com.brakefield.painter', '  com.hubx.imagination', 'com.pixilart.app', 'plant.identification.flower.tree.leaf.identifier.identify.cat.dog.breed.nature', 'com.cliffweitzman.speechify2', ' com.inforcegames.app3dmodelling', ' com.ror.removal', 'text.write.font.calligraphy.writer'])
os.chdir('../Python')
helper = Helper.Helper()
helper.Pre_Cleanup()

Test_Folder="Testing"
option="apk"
os.chdir('../Java')
for file in os.listdir(''.join(['../APK/',Test_Folder])):
	cprint(''.join(['File:',file]), 'green')
	try:
		madscanner.Function_Get_MainActivity_And_Write_To_File(file, Test_Folder)
		Error_Occured = False
	except:
		print(''.join(["Unable to get details for:", file]), 'red')
		print(traceback.format_exc())
		continue
	try:
		madscanner.Function_Run_Framework_And_Zip_And_Sign_APK(file, Test_Folder, option)
		Error_Occured = False
	except:
		print(''.join(["Unable to Run framework for:", file]), 'red')
		print(traceback.format_exc())
		continue


# TESTING THE APP
# os.chdir(cwd)
# instrument_apps = Instrument_Apps.Instrument_Apps()
# instrument_apps.Get_Test_Instrumentation_Folder_Setup()
# instrument_apps.Start_Logcat()
# instrument_apps.Start_Instrumenting_Folder()
# instrument_apps.Stop_Logcat()

# os.chdir(cwd)