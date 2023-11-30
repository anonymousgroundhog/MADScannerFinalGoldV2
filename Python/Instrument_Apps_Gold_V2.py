import os, subprocess, hashlib, shutil, time, traceback, pandas as pd
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


class Instrument_Apps_Gold_V2:

	def __init__(self):
		self.copy_from_folder_path = 'Google_Play_Apps';
		self.google_play_folder_path = '../../APK/Google_Play_Apps/';
		self.testing_folder_path = '../APK/Valid_APK_Files_To_Test';
		self.logcat_path = '';
		self.app_name = ''
		self.package_name = '';
		self.phone_name = '';
		self.main_activity = '';
		self.clicked_checkbox = False
		self.driver = '';
		self.df_app_info = ''
		self.df_apps_filtered = ''
		self.generic_file_name = ''
	def Set_Path_For_Logcat(self, this_path):
		now = datetime.now()
		d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
		self.logcat_path = ''.join([this_path, '/',str(d4),'.txt'])

	def Set_Phone_Name(self):
		self.phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
		self.phone_name=str(self.phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","").replace('\t','')
	
	def Set_App_Name(self, this_app_name):
		self.app_name = this_app_name

	def Set_Package_Name(self, this_package):
		self.package_name = this_package
	
	def Set_Main_Activity_Name(self, this_activity):
		self.main_activity = this_activity

	def Set_DF_App_Info(self, df):
		self.df_app_info = df

	def Filter_DF_App_Info(self):
		MADScanner_Injected_Logs_Sucessfully_Filtered = self.df_app_info['MADScanner_Injected_Logs_Sucessfully'] =='Yes'
		App_Ads_Filtered = self.df_app_info['App_Ads'] == 'Yes'
		Able_To_Install_Filtered = self.df_app_info['Able_To_Install'] == 'Yes'
		self.df_apps_filtered = self.df_app_info[MADScanner_Injected_Logs_Sucessfully_Filtered & App_Ads_Filtered & Able_To_Install_Filtered]

	def Instrument_Apps_In_Testing_Folder_Path(self):
		pwd = os.getcwd()
		os.chdir(self.testing_folder_path)
		self.Set_Phone_Name()
		print('Phone name is: ', self.phone_name, '\n')
		self.df_app_info['Try_Manual_Testing'] = 'No'
		for file in os.listdir():
			generic_file_name = file.replace('signed', '')
			self.generic_file_name = generic_file_name
			df_filtered = self.df_apps_filtered['App_Name'] == generic_file_name
			df_filtered = self.df_apps_filtered[df_filtered]
			main_class = df_filtered['Main_Class'].to_string().split(' ').pop()
			main_activity = df_filtered['Main_Activity'].to_string().split(' ').pop()
			if main_class == '':
				main_class=''
			if main_activity == 'NaN':
				main_activity = ''
			self.Set_Package_Name(main_class)
			self.Set_Main_Activity_Name(main_activity)
			print('\nApp_Name:', generic_file_name)
			print('Package name is:', self.package_name)
			print('Main Activity name is:', self.main_activity)
			
			cmd= ' '.join(['adb install-multiple', file])
			os.system(cmd)

			if main_activity != '' and main_class != '':
				try:
					self.Set_Capabilities()
					self.Start_Touch_Events_Only()
				except:
					cprint("Error try manually testing app!!!", 'red')

					self.df_app_info
					self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'
					# df_filtered['Try_Manual_Testing'] = 'Yes'
					print(traceback.format_exc())
			else:
				cprint("main_activity or main_class is empty!!!", 'red')
				self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'


			cmd = ' '.join(['adb uninstall', self.package_name])
			os.system(cmd)
		print(self.df_app_info)
		self.df_app_info.to_csv('testing.csv', index=False)
		os.chdir(pwd)

	
	

	def Clean_DF_App_Info(self):
			Main_Classes = self.df_app_info['Main_Class']
			for cl in Main_Classes:
				cprint(cl)	
	
	def Set_Testing_Folder_Path(self, this_path):
		self.testing_folder_path = this_path

	def Set_Copy_From_Folder_Path(self, this_path):
		self.copy_from_folder_path = this_path
	
	def Set_Google_Play_Folder_Path(self):
		self.google_play_folder_path = ''.join(['../../APK/',self.copy_from_folder_path])
	
	def Set_Capabilities(self):
		cprint('\n\tSetting Capabilities!!!', 'cyan')
		cprint(''.join(['\nSetting capabilities for dir:', os.getcwd()]), 'cyan')
		cprint(os.getcwd(),'green')
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
		list_of_elements = self.driver.find_elements(By.CLASS_NAME, id)
		for elem in list_of_elements:
			# if elements == self.driver.find_elements(By.CLASS_NAME, id):
			element_text = elem.text.lower()

			list_element_text = element_text.split(" ")
			print("Testing:",list_element_text)
			if 'phone' in list_element_text:
				self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'
				break;
			if 'continue' in list_element_text and 'with' in list_element_text and 'google' in list_element_text:
				try:
					cprint(element_text, 'yellow')
					elem.click()
					break
				except:
					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
					continue
			
			if 'sean' in list_element_text and 'sanders' in list_element_text:
				try:
					cprint(element_text, 'yellow')
					elem.click()
					break
				except:
					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
					continue
			# HANDLE CASE FOR ALLOWING
			if element_text.__contains__('allow') or element_text.__contains__('accept') or element_text.__contains__('yes') or element_text.__contains__('skip') or element_text.__contains__('next'):
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
		print("dir is now:",os.getcwd())
		pwd=os.getcwd()
		os.chdir(self.testing_folder_path)
		# os.system("rm -rf *")
		self.df_app_info = self.df_app_info[self.df_app_info['Able_To_Install'] == 'Yes']
		os.system("cp ../Java/Classes/sootOutput/signed*.apk ../Java/APK_Files_Signed_And_Injected_Logs")

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
		# os.system('rm *.apk')
		os.chdir(pwd)

	def Start_Logcat(self):
		os.system('adb logcat -c')
		now = datetime.now()
		d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
		cmd=''.join(['nohup adb logcat FiniteState:V *:S > ',self.logcat_path,' &'])
		os.system(cmd)
	
	def Stop_Logcat(self):
		os.system('pkill adb')
	
	def Start_Touch_Events_Only(self):
		try:	
			# if not Error_Occured:
			# print("Packcage:"+str(self.package_name) + " Activity:" +str(self.main_activity))
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
		except:
			print(colored(''.join(['Error performing actions for:', this_dir]), 'red'))
			print(traceback.format_exc())

	def Start_Instrumenting_Folder(self):
		cprint('\n\tStarting to Instrument Folder!!!', 'green')
		pwd=os.getcwd()

		os.chdir(self.testing_folder_path)
		pwd=os.getcwd()
		entries = os.listdir('.')

		# Filter out entries that are directories
		directories = [entry for entry in entries if os.path.isdir(entry)]
		for this_dir in directories:
			print(' '.join(['\nInstrumenting in:', this_dir]))
			print('Current_Dir::', os.getcwd())
			Error_Occured = True
			try:
				# SET MAIN ACTIVITY AND PACKAGE
				app_name = ''.join([this_dir.replace('signed',''),'.apk'])
				# cprint(app_name)
				os.chdir(pwd)
				self.Set_Capabilities(this_dir)
				os.chdir('../')
				Error_Occured = False
			except:
				print(''.join(['Error setting desired_capabilities for:', this_dir]))
				print(traceback.format_exc())
				cmd = ' '.join(['adb uninstall', str(self.package_name)])
				os.system(cmd)
				os.chdir('../')
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
				cmd = ' '.join(['adb uninstall', str(self.package_name)])
				os.system(cmd)
				os.chdir('../')
			except:
				# print(colored(''.join(['Error performing actions for:', this_dir]), 'red'))
				print(traceback.format_exc())
				cmd = ' '.join(['adb uninstall', str(self.package_name)])
				os.system(cmd)
				os.chdir('../')
				continue


# os.system('clear')
# instrument_apps = Instrument_Apps_Gold_V2()
# instrument_apps.Set_DF_App_Info(pd.read_csv('../Data/App_Category_Details2.csv'))
# # print(instrument_apps.df_app_info)
# instrument_apps.Filter_DF_App_Info()
# # print(instrument_apps.df_apps_filtered)
# instrument_apps.Set_Path_For_Logcat('../Data/Logs')
# instrument_apps.Start_Logcat()
# instrument_apps.Instrument_Apps_In_Testing_Folder_Path()
# instrument_apps.Stop_Logcat()

# instrument_apps.Clean_DF_App_Info()
# instrument_apps.Set_Copy_From_Folder_Path('Testing')
# instrument_apps.Set_Testing_Folder_Path('../Java/Classes/sootOutput')
# instrument_apps.Set_Google_Play_Folder_Path()
# instrument_apps.Get_Test_Instrumentation_Folder_Setup()
# instrument_apps.Start_Logcat()
# instrument_apps.Start_Instrumenting_Folder()
# instrument_apps.Stop_Logcat()