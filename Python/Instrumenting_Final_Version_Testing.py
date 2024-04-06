import os, subprocess, hashlib, shutil, time, traceback, pandas as pd, Helper
from termcolor import colored, cprint
# from termcolor import colored
from datetime import datetime

# Android environment
# from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
# from appium.options.common import AppiumOptions
# from appium.options.ios import XCUITestOptions
from xml.etree import ElementTree as ET
from appium import webdriver
from selenium.webdriver.common.by import By
# from selenium.common.exceptions import NoSuchElementException

from appium import webdriver
# from appium.webdriver.common.appiumby import AppiumBy
# from ppadb.client import Client as AdbClient
clicked_checkbox = False
class Instrumenting_Final_Verson_Apps:
	def __init__(self):
		self.copy_from_folder_path = 'Google_Play_Apps';
		self.google_play_folder_path = '../../APK/Google_Play_Apps/';
		self.testing_folder_path = '../APK/Valid_APK_Files_To_Test';
		self.appium_server_url = 'http://localhost:4723/wd/hub'
		self.Overide_Contains_Ads = False;
		self.logcat_path = '';
		self.app_name = '';
		self.package_name = '';
		self.file= '';
		self.phone_name = '';
		self.main_activity = '';
		self.clicked_checkbox = False
		self.driver = '';
		self.df_app_info = '';
		self.df_apps_filtered = '';
		self.generic_file_name = '';
		self.source_xml = ''

	def Set_File(self, file):
		self.file = file

	def Set_Source_XML(self):
		self.source_xml = self.driver.page_source

	def Set_Overide_Contains_Ads(self, bool_option):
		self.Overide_Contains_Ads = bool_option
	
	def Set_Copy_From_Folder_Path(self, this_path):
		self.copy_from_folder_path = this_path
	
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
		if self.Overide_Contains_Ads == True:
			print("Filtering!!!")
			self.df_apps_filtered = self.df_app_info[Able_To_Install_Filtered]
		else:
			self.df_apps_filtered = self.df_app_info[MADScanner_Injected_Logs_Sucessfully_Filtered & App_Ads_Filtered & Able_To_Install_Filtered]


	def Set_Capabilities(self):
		cprint('\n\tSetting Capabilities!!!', 'cyan')
		# cprint(''.join(['\nSetting capabilities for dir:', os.getcwd()]), 'cyan')
		cprint(os.getcwd(),'green')
		desired_caps = {}
		desired_caps['platformName'] = 'Android'
		# desired_caps['platformVersion'] = '33'
		# desired_caps['automationName'] = 'uiautomator2'
		desired_caps['deviceName'] = '7040018020065015'
		desired_caps['appPackage'] = self.package_name
		desired_caps['appActivity'] = self.main_activity
		desired_caps['appium:wdaStartupRetries'] = '6'

		desired_caps['adbExecTimeout'] = '120000'
		desired_caps['app'] = ''.join([os.getcwd(),'/',self.file])
		appium_server_url = 'http://localhost:4723/wd/hub'
		self.driver = webdriver.Remote(self.appium_server_url, desired_caps)

	def click_on_button_by_class_permission(self, id):
		helper = Helper.Helper()
		when_to_manual_test_params = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_by_class_permission_manual_test_params.txt')
		test_params_permissions = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_allow_or_sign_in.txt')
		# elements = self.driver.find_elements(By.CLASS_NAME, id)
		time.sleep(2)
		list_of_elements = self.driver.find_elements(By.CLASS_NAME, id)
		for elem in list_of_elements:
			# if elements == self.driver.find_elements(By.CLASS_NAME, id):
			element_text = elem.text.lower()

			list_element_text = element_text.split(" ")
			print("Testing:",list_element_text)
			manual_test=False
			for item in list_element_text:
				if item in when_to_manual_test_params:
					self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'
					manual_test = True
					break;	

			if manual_test:
				break;
			# if 'phone' in list_element_text:
			# 	self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'
			# 	break;
			if element_text == 'continue with google' or 'sign up later':
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
			if element_text in test_params_permissions:
				try:
					cprint(element_text, 'yellow')
					elem.click()
					break
				except:
					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
					continue
			# if element_text.__contains__('allow') or element_text.__contains__('accept') or element_text.__contains__('yes') or element_text.__contains__('skip') or element_text.__contains__('next'):
			# 	try:
			# 		cprint(element_text, 'yellow')
			# 		elem.click()
			# 		break
			# 	except:
			# 		cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
			# 		continue
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

			if element_text in ['agree', 'accept'] and self.clicked_checkbox:
			    try:
			        cprint(element_text, 'yellow')
			        elem.click()
			        break
			    except:
			        cprint(''.join(["elem doesn't exist:",str(id)]), 'red')
			        continue
		
	def click_on_button_by_class_advertisement(self, id):
		# helper = Helper.Helper()
		# when_to_manual_test_params = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_by_class_permission_manual_test_params.txt')
		# test_params_permissions = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_allow_or_sign_in.txt')
		# elements = self.driver.find_elements(By.CLASS_NAME, id)
		time.sleep(2)
		list_of_elements = self.driver.find_elements(By.CLASS_NAME, id)
		for elem in list_of_elements:
			if self.source_xml == self.driver.page_source:
				elem.click()
			else:
				cprint('page source xml not same. Exiting!!!', 'red')
				break
	
	def click_on_screen_by_cordinates(self, x, y, duration, pause_time):
		time.sleep(pause_time)
		try:
			TouchAction(self.driver).tap(None, x, y, duration).perform()
		except:
			print(''.join(['FAILED TRYING TO TOUCH POSITION: (', str(x), ' ', str(y), ')']))
	
	def Start_Touch_Events_Only(self):
		# try:	
			# if not Error_Occured:
			# print("Packcage:"+str(self.package_name) + " Activity:" +str(self.main_activity))
			helper = Helper.Helper()
			classes_to_filter_on = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_by_class_permission.txt')
			source_xml = self.driver.page_source
			# cprint(source_xml, 'cyan')
			time.sleep(2)
			counter=0
			while counter < 5:
				for cl in classes_to_filter_on:
					self.click_on_button_by_class_permission(cl)
				# source_xml = self.driver.page_source
				counter=counter+1
			self.Set_Source_XML()
			classes_to_filter_on_ad_specific = ['android.widget.TextView']
			cprint( "Starting to click on ad specific now!!!",'red')
			for cl in classes_to_filter_on_ad_specific:
					self.click_on_button_by_class_advertisement(cl)
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
		# except:
		# 	# print(colored(''.join(['Error performing actions for:', this_dir]), 'red'))
		# 	print(traceback.format_exc())

	def Instrument_Apps_In_Testing_Folder_Path(self):
		
		cmds = ['adb uninstall io.appium.uiautomator2.server', 'adb uninstall io.appium.settings', 'adb uninstall io.appium.uiautomator2.server.test']
		
		for cmd in cmds:
			try:
				os.system(cmd)
			except:
				continue
		pwd = os.getcwd()
		os.chdir(self.testing_folder_path)
		self.Set_Phone_Name()
		print('Phone name is: ', self.phone_name, '\n')
		self.df_app_info['Try_Manual_Testing'] = 'No'
		os.system("rm *.csv")
		number_of_apps = len(os.listdir())
		cprint("Phone name:"+self.phone_name, 'yellow')
		app_counter=0
		for file in os.listdir():
			self.file = file
			generic_file_name = file.replace('signed', '').replace(' ', '')
			self.generic_file_name = generic_file_name
			df_filtered = self.df_apps_filtered['App_Name'] == generic_file_name
			df_filtered = self.df_apps_filtered[df_filtered]
			# print("DF class is now: ", df_filtered)
			aapt_details=subprocess.run(['aapt', 'dump', 'badging', file], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
			main_activity = [item for item in aapt_details if "launchable-activity" in item]
			main_class = [item for item in aapt_details if "package" in item]
			# cprint(''.join(['Main activity is now: ',str(main_activity)]), 'green')
			if len(main_activity) > 0:
				main_activity = main_activity[0].split(" ")[1].replace("name=","").replace("'","")
			else:
				main_activity = ''

			if len(main_class) > 0:
				main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
			else:
				main_class = ''

			if main_class == '':
				main_class=''
			if main_activity == 'NaN':
				main_activity = ''
			self.Set_Package_Name(main_class)
			self.Set_Main_Activity_Name(main_activity)
			app_counter=app_counter+1
			cprint(''.join(['\tRunning app: ', str(app_counter),' of ',str(number_of_apps)]), 'green')
			print('\nApp_Name:', generic_file_name)
			print('Package name is:', self.package_name)
			print('Main Activity name is:', self.main_activity)
			
			cmd= ' '.join(['adb install-multiple', file])
			os.system(cmd)
			if main_activity != '' and main_class != '':
				# try:
					self.Set_Capabilities()
					self.Start_Touch_Events_Only()
				# except:
				# 	cprint("Error try manually testing app!!!", 'red')

				# 	self.df_app_info
				# 	self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'
				# 	# df_filtered['Try_Manual_Testing'] = 'Yes'
				# 	print(traceback.format_exc())
			else:
				cprint("main_activity or main_class is empty!!!", 'red')
				self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'


			cmd = ' '.join(['adb uninstall', self.package_name])
			os.system(cmd)
		print(self.df_app_info)
		self.df_app_info.to_csv('testing.csv', index=False)
		os.chdir(pwd)


	def Instrument_Apps_In_Testing_Folder_Path_Install_And_Start(self):
			
			cmds = ['adb uninstall io.appium.uiautomator2.server', 'adb uninstall io.appium.settings', 'adb uninstall io.appium.uiautomator2.server.test']
			
			for cmd in cmds:
				try:
					os.system(cmd)
				except:
					continue
			pwd = os.getcwd()
			os.chdir(self.testing_folder_path)
			self.Set_Phone_Name()
			print('Phone name is: ', self.phone_name, '\n')
			self.df_app_info['Try_Manual_Testing'] = 'No'
			os.system("rm *.csv")
			number_of_apps = len(os.listdir())
			cprint("Phone name:"+self.phone_name, 'yellow')
			app_counter=0
			for file in os.listdir():
				self.file = file
				generic_file_name = file.replace('signed', '').replace(' ', '')
				self.generic_file_name = generic_file_name
				df_filtered = self.df_apps_filtered['App_Name'] == generic_file_name
				df_filtered = self.df_apps_filtered[df_filtered]
				# print("DF class is now: ", df_filtered)
				aapt_details=subprocess.run(['aapt', 'dump', 'badging', file], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
				main_activity = [item for item in aapt_details if "launchable-activity" in item]
				main_class = [item for item in aapt_details if "package" in item]
				# cprint(''.join(['Main activity is now: ',str(main_activity)]), 'green')
				if len(main_activity) > 0:
					main_activity = main_activity[0].split(" ")[1].replace("name=","").replace("'","")
				else:
					main_activity = ''

				if len(main_class) > 0:
					main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
				else:
					main_class = ''

				if main_class == '':
					main_class=''
				if main_activity == 'NaN':
					main_activity = ''
				self.Set_Package_Name(main_class)
				self.Set_Main_Activity_Name(main_activity)
				app_counter=app_counter+1
				cprint(''.join(['\tRunning app: ', str(app_counter),' of ',str(number_of_apps)]), 'green')
				print('\nApp_Name:', generic_file_name)
				print('Package name is:', self.package_name)
				print('Main Activity name is:', self.main_activity)
				
				# cmd= ' '.join(['adb install-multiple', file])
				# os.system(cmd)
				if main_activity != '' and main_class != '':
					# try:
						self.Set_Capabilities()
						time.sleep(5)
					# except:
					# 	cprint(''.join(['Unable to start', file]), 'red')
				else:
					cprint("main_activity or main_class is empty!!!", 'red')
					self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'


				cmd = ' '.join(['adb uninstall', self.package_name])
				os.system(cmd)
			print(self.df_app_info)
			self.df_app_info.to_csv('testing.csv', index=False)
			os.chdir(pwd)

	def Start_Logcat(self):
			os.system('adb logcat -c')
			now = datetime.now()
			d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
			cmd=''.join(['nohup adb logcat FiniteState:V *:S > ',self.logcat_path,' &'])
			os.system(cmd)
		
	def Stop_Logcat(self):
		os.system('pkill adb')

# def Set_Capabilities(phone_name, package_name, main_activity, file):
# 		cprint('\n\tSetting Capabilities!!!', 'cyan')
# 		cprint(''.join(['\nSetting capabilities for dir:', os.getcwd()]), 'cyan')
# 		cprint(os.getcwd(),'green')
# 		desired_caps = {}
# 		desired_caps['platformName'] = 'Android'
# 		desired_caps['deviceName'] = '7040018020065015'
# 		desired_caps['appPackage'] = self.package_name
# 		desired_caps['appActivity'] = self.main_activity
# 		desired_caps['appium:wdaStartupRetries'] = '6'

# 		desired_caps['adbExecTimeout'] = '120000'
# 		appium_server_url = 'http://localhost:4723/wd/hub'
# 		driver = webdriver.Remote(appium_server_url, desired_caps)
# 		# driver.implicitly_wait(20)
# 		return driver

# def click_on_button_by_class_permission(driver, id):
# 		helper = Helper.Helper()
# 		when_to_manual_test_params = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_by_class_permission_manual_test_params.txt')
# 		test_params_permissions = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_allow_or_sign_in.txt')
# 		# elements = self.driver.find_elements(By.CLASS_NAME, id)
# 		time.sleep(2)
# 		list_of_elements = driver.find_elements(By.CLASS_NAME, id)
# 		for elem in list_of_elements:
# 			# if elements == self.driver.find_elements(By.CLASS_NAME, id):
# 			element_text = elem.text.lower()

# 			list_element_text = element_text.split(" ")
# 			print("Testing:",list_element_text)
# 			manual_test=False
# 			for item in list_element_text:
# 				if item in when_to_manual_test_params:
# 					# self.df_app_info.loc[self.df_app_info['App_Name'] == generic_file_name, 'Try_Manual_Testing'] = 'Yes'
# 					manual_test = True
# 					break;	

# 			if manual_test:
# 				break;

# 			if element_text == 'continue with google' or 'sign up later':
# 				try:
# 					cprint(element_text, 'yellow')
# 					elem.click()
# 					break
# 				except:
# 					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
# 					continue
			
# 			if 'sean' in list_element_text and 'sanders' in list_element_text:
# 				try:
# 					cprint(element_text, 'yellow')
# 					elem.click()
# 					break
# 				except:
# 					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
# 					continue
# 			# HANDLE CASE FOR ALLOWING
# 			if element_text in test_params_permissions:
# 				try:
# 					cprint(element_text, 'yellow')
# 					elem.click()
# 					break
# 				except:
# 					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
# 					continue

# 			# HANDLE SPECIAL CASE CHECKBOX
# 			if id.__contains__('android.widget.CheckBox') and element_text.__contains__('agree') and not clicked_checkbox:
# 				try:
# 					cprint(element_text, 'yellow')
# 					elem.click()
# 					clicked_checkbox = True
# 					break
# 				except:
# 					cprint(''.join(["elem doesn't exist (Unique case):",str(id)]), 'red')
# 					continue

# 			if element_text in ['agree', 'accept'] and clicked_checkbox:
# 			    try:
# 			        cprint(element_text, 'yellow')
# 			        elem.click()
# 			        break
# 			    except:
# 			        cprint(''.join(["elem doesn't exist:",str(id)]), 'red')
# 			        continue
# def click_on_button_by_class_advertisement(driver, id):
# 		time.sleep(2)
# 		list_of_elements = driver.find_elements(By.CLASS_NAME, id)
# 		for elem in list_of_elements:
# 			if source_xml == driver.page_source:
# 				elem.click()
# 			else:
# 				cprint('page source xml not same. Exiting!!!', 'red')
# 				break

# def Start_Touch_Events_Only(driver, package_name, main_activity):
# 		try:	
# 			# if not Error_Occured:
# 			# print("Packcage:"+str(self.package_name) + " Activity:" +str(self.main_activity))
# 			helper = Helper.Helper()
# 			classes_to_filter_on = helper.Read_File_And_Return_Lines('../../Python/Instrumentation_Helper_Files/click_on_button_by_class_permission.txt')
# 			source_xml = driver.page_source
# 			# cprint(source_xml, 'cyan')
# 			time.sleep(2)
# 			counter=0
# 			while counter < 5:
# 				for cl in classes_to_filter_on:
# 					click_on_button_by_class_permission(driver, cl)
# 				# source_xml = self.driver.page_source
# 				counter=counter+1
# 			# self.Set_Source_XML()
# 			classes_to_filter_on_ad_specific = ['android.widget.TextView']
# 			cprint( "Starting to click on ad specific now!!!",'red')
# 			for cl in classes_to_filter_on_ad_specific:
# 					click_on_button_by_class_advertisement(driver, cl)
# 			app_activity = driver.current_activity
# 			print("Current activity is: ",str(app_activity))
# 			# print('\nPage source is:', source_xml)

# 			click_on_screen_by_cordinates(driver, 366, 82.9, 2, 3)
# 			click_on_screen_by_cordinates(driver, 384, 238.5, 2, 3)
# 			this_activity = driver.current_activity
# 			print("Activity is now:", str(this_activity))
# 			if this_activity != app_activity:
# 				click_on_screen_by_cordinates(driver, 582, 110, 2, 3)
# 				click_on_screen_by_cordinates(driver, 719, 127, 2, 2)
# 				click_on_screen_by_cordinates(driver, 363, 304, 2, 2)
# 				click_on_screen_by_cordinates(driver, 547, 809, 2, 2)
# 		except:
# 			# print(colored(''.join(['Error performing actions for:', this_dir]), 'red'))
# 			print(traceback.format_exc())

# def click_on_screen_by_cordinates(driver, x, y, duration, pause_time):
# 		time.sleep(pause_time)
# 		try:
# 			TouchAction(driver).tap(None, x, y, duration).perform()
# 		except:
# 			print(''.join(['FAILED TRYING TO TOUCH POSITION: (', str(x), ' ', str(y), ')']))

# os.chdir('../APK/Valid_APK_Files_To_Test')

# phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
# phone_name=str(phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","").replace('\t','')
# app_counter=0
# number_of_apps = len(os.listdir())
# for file in os.listdir():
# 	if 'apk' in file:
# 		print(file)
# 		aapt_details=subprocess.run(['aapt', 'dump', 'badging', file], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
# 		main_activity = [item for item in aapt_details if "launchable-activity" in item]
# 		main_class = [item for item in aapt_details if "package" in item]
# 		# cprint(''.join(['Main activity is now: ',str(main_activity)]), 'green')
# 		if len(main_activity) > 0:
# 			main_activity = main_activity[0].split(" ")[1].replace("name=","").replace("'","")
# 		else:
# 			main_activity = ''

# 		if len(main_class) > 0:
# 			main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
# 		else:
# 			main_class = ''

# 		if main_class == '':
# 			main_class=''
# 		if main_activity == 'NaN':
# 			main_activity = ''
# 		print('main_class:',main_class)
# 		print('main_activity:',main_activity)
# 		app_counter=app_counter+1
# 		# cprint(''.join(['\tRunning app: ', str(app_counter),' of ',str(number_of_apps)]), 'green')
# 		cmd= ' '.join(['adb install-multiple', file])
# 		os.system(cmd)
# 		if main_activity != '' and main_class != '':
# 			try:
# 				driver = Set_Capabilities(phone_name, main_class, main_activity, ''.join([os.getcwd(),'/',file]))
# 			except:
# 				print(''.join(['Error setting desired_capabilities for:', file]))
# 				try:
# 					Start_Touch_Events_Only()
# 				except:
# 					cprint("Error try manually testing app!!!", 'red')
# 		os.system(''.join(['adb uninstall ', main_activity]))

instrument_apps = Instrumenting_Final_Verson_Apps()
instrument_apps.Set_DF_App_Info(pd.read_csv('../Data/App_Category_Details2.csv'))
instrument_apps.Set_Overide_Contains_Ads(True)
instrument_apps.Filter_DF_App_Info()
print(instrument_apps.df_apps_filtered)
instrument_apps.Set_Path_For_Logcat('../Data/Logs')
instrument_apps.Set_Copy_From_Folder_Path('Valid_APK_Files_To_Test')
instrument_apps.Start_Logcat()
instrument_apps.Instrument_Apps_In_Testing_Folder_Path_Install_And_Start()
instrument_apps.Stop_Logcat()