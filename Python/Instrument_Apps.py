import os, subprocess, hashlib, shutil, time, traceback

from datetime import datetime

# Android environment
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from xml.etree import ElementTree as ET
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient


class Instrument_Apps:

	def __init__(self):
		self.google_play_folder_path = '../../APK/Google_Play_Apps/';
		self.testing_folder_path = '../Java/APK_Files_Signed_And_Injected_Logs';
		self.package_name = '';
		self.phone_name = '';
		self.main_activity = '';
		
		self.driver = '';

	def Set_Capabilities(self, this_dir):
		app_name=''.join([this_dir, '/',this_dir,'.apk'])
		self.package_name=subprocess.run(['aapt', 'dump', 'badging', app_name ], stdout=subprocess.PIPE)
		self.package_name=self.package_name.stdout.decode('utf-8').split("\n")[0].split(" ")[1].replace("name=","").replace("'","")
		self.main_activity=subprocess.run(['aapt', 'dump', 'badging', app_name], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
		self.main_activity = [item for item in self.main_activity if "launchable-activity" in item]
		self.main_activity = self.main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
		os.chdir(this_dir)
		os.system('adb install-multiple $(ls signed*.apk)')
		self.phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
		self.phone_name=str(self.phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","")
		desired_capabilities = {
	            "platformName": "Android",
	            "deviceName": self.phone_name, #7040018020065015
	            "appPackage": self.package_name,
	            "noReset": True,
	            "autoacceptalerts": True,
	            "appium:wdaStartupRetries": 6,
	            "autoGrantPermissions": True,
	            "appActivity": self.main_activity,
	            "adbExecTimeout": 60000
		};

		self.driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities)

	def click_on_button_by_class_permission(self, id):
		for elem in self.driver.find_elements(By.CLASS_NAME, id):
		    if 'allow' in elem.text.lower():
		        try:
		            print(elem)
		            elem.click()
		        except:
		            print(''.join(["elem doesn't exist:",str(id)]))
		            continue

	def click_on_screen_by_cordinates(self, x, y, duration, pause_time):
		time.sleep(pause_time)
		try:
			TouchAction(self.driver).tap(None, x, y, duration).perform()
		except:
			print(''.join(['FAILED TRYING TO TOUCH POSITION: (', str(x), ' ', str(y), ')']))

	def Get_Test_Instrumentation_Folder_Setup(self):
		pwd=os.getcwd()
		os.chdir(self.testing_folder_path)
		os.system("rm -rf *")
		# os.chdir('../')
		os.system("cp ../Classes/sootOutput/signed*.apk .")

		files=os.listdir('.')
		for file in files:
			this_dir=file.replace(".apk","")
			os.mkdir(this_dir)
			shutil.copyfile(file,''.join([this_dir, '/', file]), follow_symlinks=True)
			path_google_play = ''.join([self.google_play_folder_path,this_dir.replace('signed','')])
			if os.path.isdir(path_google_play):
				files= [entry for entry in os.listdir(path_google_play) if not file.replace("signed","") in entry]
				print(files)
				for f in files:
					path=''.join([self.google_play_folder_path,this_dir.replace('signed',''),'/',f])
					shutil.copy(path, this_dir)
		os.system('rm *.apk')
		os.chdir(pwd)

	def Start_Instrumenting_Folder(self):
		pwd=os.getcwd()
		os.system('adb logcat -c')
		now = datetime.now()
		d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
		cmd=''.join(['nohup adb logcat FiniteState:V *:S > ../Data/Logs/',str(d4),'.txt &'])
		os.system(cmd)

		os.chdir(self.testing_folder_path)
		entries = os.listdir('.')

		# Filter out entries that are directories
		directories = [entry for entry in entries if os.path.isdir(entry)]
		for this_dir in directories:
			print(this_dir)
			print("Is a file:", os.path.isfile(this_dir))
			Error_Occured = True
			try:
				self.Set_Capabilities(this_dir)
				Error_Occured = False
			except:
				print("Error setting desired_capabilities for: ", this_dir)
				continue
			try:	
				if not Error_Occured:
					print("Packcage:"+str(self.package_name) + " Activity:" +str(self.main_activity))
					source_xml = self.driver.page_source
					time.sleep(2)
					self.click_on_button_by_class_permission("android.widget.Button")
					source_xml = self.driver.page_source
					self.click_on_button_by_class_permission("android.widget.Button")
					app_activity = self.driver.current_activity
					print("Current activity is: "+str(app_activity))

					self.click_on_screen_by_cordinates(366, 82.9, 2, 3)
					self.click_on_screen_by_cordinates(384, 238.5, 2, 3)
					this_activity = self.driver.current_activity
					print("Activity is now:", str(this_activity))
					if this_activity != app_activity:
						self.click_on_screen_by_cordinates(582, 110, 2, 3)
						self.click_on_screen_by_cordinates(719, 127, 2, 2)
						self.click_on_screen_by_cordinates(363, 304, 2, 2)
						self.click_on_screen_by_cordinates(547, 809, 2, 2)
					cmd = ' '.join(['adb uninstall', self.package_name])
					os.system(cmd)
			except:
				print("Error performing actions for: ", this_dir)
				continue
			os.system('pkill adb')
			os.chdir('../')
			# if os.path.isfile(this_dir):
				# try:
				# except:
				# 	print(''.join(["Error instrumenting:",str(this_dir)]))
				# 	print(traceback.format_exc())
				# 	continue	


# os.system('clear')
# instrument_apps = Instrument_Apps()
# instrument_apps.Get_Test_Instrumentation_Folder_Setup()
# instrument_apps.Start_Instrumenting_Folder()