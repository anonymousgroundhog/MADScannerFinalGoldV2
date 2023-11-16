import os, subprocess, hashlib, shutil, time, traceback
from termcolor import colored, cprint
# from termcolor import colored
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
		self.clicked_checkbox = False
		self.driver = '';

	def Set_Capabilities(self, this_dir):
		cprint('\n\tSetting Capabilities!!!', 'green')
		cprint(''.join(['\nSetting capabilities for dir:', os.getcwd()]), 'cyan')

		app_name=''.join([this_dir, '/',this_dir,'.apk'])
		self.package_name=subprocess.run(['aapt', 'dump', 'badging', app_name ], stdout=subprocess.PIPE)
		# print("Testing:", str(self.package_name.stdout.decode('utf-8').split("\n")[0].split(" ")))
		self.package_name=self.package_name.stdout.decode('utf-8').split("\n")[0].split(" ")[1].replace("name=","").replace("'","")
		self.main_activity=subprocess.run(['aapt', 'dump', 'badging', app_name], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
		self.main_activity = [item for item in self.main_activity if "launchable-activity" in item]
		self.main_activity = self.main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
		os.chdir(this_dir)
		os.system('adb install-multiple $(ls signed*.apk)')
		self.phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
		self.phone_name=str(self.phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","").replace('\t','')
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
		# elements = self.driver.find_elements(By.CLASS_NAME, id)
		time.sleep(2)
		for elem in self.driver.find_elements(By.CLASS_NAME, id):
			# if elements == self.driver.find_elements(By.CLASS_NAME, id):
			element_text = elem.text.lower()

			print("Testing:",element_text.split(" "))
			# HANDLE CASE FOR ALLOWING
			if element_text.__contains__('allow') or element_text.__contains__('accept'):
				try:
					cprint(element_text, 'yellow')
					elem.click()
					break
				except:
					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
					continue
			# HANDLE SPECIAL CASE CHECKBOX
			if id.__contains__('android.widget.CheckBox') and element_text.__contains__('agree') and not self.clicked_checkbox:
				try:
					cprint(element_text, 'yellow')
					elem.click()
					self.clicked_checkbox = True
					break
				except:
					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
					continue

			if (elem.text =='Agree' or elem.text =='Accept') and self.clicked_checkbox:
			    try:
			        cprint(element_text, 'yellow')
			        elem.click()
			        break
			    except:
			        cprint(''.join(["elem doesn't exist:",str(id)]), 'red')
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
				files= [entry for entry in os.listdir(path_google_play) if not file.replace("signed","") in entry and not file in entry]
				print(files)
				for f in files:
					path=''.join([self.google_play_folder_path,this_dir.replace('signed',''),'/',f])
					shutil.copy(path, this_dir)
		os.system('rm *.apk')
		os.chdir(pwd)

	def Start_Logcat(self):
		os.system('adb logcat -c')
		now = datetime.now()
		d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
		cmd=''.join(['nohup adb logcat FiniteState:V *:S > ../Data/Logs/',str(d4),'.txt &'])
		os.system(cmd)
	
	def Stop_Logcat(self):
		os.system('pkill adb')

	def Start_Instrumenting_Folder(self):
		cprint('\n\tStarting to Instrument Folder!!!', 'green')
		pwd=os.getcwd()

		os.chdir(self.testing_folder_path)
		entries = os.listdir('.')

		# Filter out entries that are directories
		directories = [entry for entry in entries if os.path.isdir(entry)]
		for this_dir in directories:
			print(' '.join(['\nInstrumenting in:', this_dir]))
			Error_Occured = True
			try:
				self.Set_Capabilities(this_dir)
				Error_Occured = False
			except:
				print(''.join(['Error setting desired_capabilities for:', this_dir]))
				print(traceback.format_exc())
				continue
			try:	
				# if not Error_Occured:
				print("Packcage:"+str(self.package_name) + " Activity:" +str(self.main_activity))
				source_xml = self.driver.page_source
				time.sleep(2)
				# android.widget.CheckBox
				self.click_on_button_by_class_permission("android.widget.CheckBox")
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.Button")
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.TextView")
				
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.CheckBox")
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.Button")
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.TextView")

				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.CheckBox")
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.Button")
				source_xml = self.driver.page_source
				self.click_on_button_by_class_permission("android.widget.TextView")
				source_xml = self.driver.page_source

				app_activity = self.driver.current_activity
				print("Current activity is: ",str(app_activity))
				# print('\nPage source is:', source_xml)

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
				os.chdir('../')
			except:
				print(colored(''.join(['Error performing actions for:', this_dir]), 'red'))
				print(traceback.format_exc())
				cmd = ' '.join(['adb uninstall', self.package_name])
				os.system(cmd)
				os.chdir('../')
				continue


os.system('clear')
instrument_apps = Instrument_Apps()
instrument_apps.Get_Test_Instrumentation_Folder_Setup()
# instrument_apps.Start_Logcat()
instrument_apps.Start_Instrumenting_Folder()
# instrument_apps.Stop_Logcat()