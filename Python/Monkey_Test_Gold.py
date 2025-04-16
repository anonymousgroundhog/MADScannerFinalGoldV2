# THIS FILE IS SPECIFICALLY FOR MONKEY TESTING EACH APP AND LOGGING THE DETAILS
import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob, numpy as np
import unittest
from termcolor import colored, cprint
from subprocess import run
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy
from selenium.webdriver.common.by import By
from appium.options.android import UiAutomator2Options

from datetime import datetime

def Stop_Logcat():
	os.system('pkill adb')

def Set_Capabilities(phone_name, package_name, main_activity, this_file_path):
		desired_caps = {}
		desired_caps['platformName'] = 'Android'
		# desired_caps['platformVersion'] = '33'
		# desired_caps['automationName'] = 'uiautomator2'
		desired_caps['deviceName'] =  phone_name #'7040018020065015'
		desired_caps['appPackage'] = package_name
		desired_caps['appActivity'] = main_activity
		desired_caps['appium:wdaStartupRetries'] = '6'
		desired_caps['adbExecTimeout'] = '120000'
		desired_caps['autoGrantPermissions'] = True
		# desired_caps['app'] = this_file_path
		appium_server_url = 'http://localhost:4723/wd/hub'
		

		options = UiAutomator2Options()
		options.load_capabilities(desired_caps)
		driver = webdriver.Remote(appium_server_url, options=options)

		return driver

def Get_Phone_Name():
	try:
		phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
		phone_name=str(phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","").replace('\t','')
	except:
		phone_name=''
	return phone_name

def Get_XML_Output_Of_Interest(driver, thing_to_search):
	items_to_return = []
	xml_source = driver.page_source
	for element in xml_source.split('\r\n'):
		if thing_to_search in element:
			items_to_return.append(element.split('class=').pop().split(' ')[0].replace('"',''))
	return items_to_return

def click_on_button_by_class(driver, id):
    for elem in driver.find_elements(By.CLASS_NAME, id):
        if len(driver.find_elements(By.CLASS_NAME, id)) > 0 and elem.is_displayed():  
            try:
                print(elem)
                elem.click()
            except:
                print(''.join(["elem doesn't exist:",str(id)]))
                continue

def click_on_button_by_class_close_Ad(driver, id):
    # if (!driver.findElements(By.Id(“some_ID”)).isEmpty && driver.findElements(By.Id(“some_ID”)).get(0).isDispalyed() )
    for elem in driver.find_elements(By.CLASS_NAME, id):
        if 'close' in elem.text.lower() and elem.is_displayed():  
            try:
                print(elem)
                elem.click()
            except:
                print(''.join(["elem doesn't exist:",str(id)]))
                continue
def click_on_button_by_class_permission(driver, id):
        for elem in driver.find_elements(By.CLASS_NAME, id):
            if 'allow' in elem.text.lower():
                try:
                    print(elem)
                    elem.click()
                except:
                    print(''.join(["elem doesn't exist:",str(id)]))
                    break

def Start_Logcat(logcat_path):
	cprint("Logging to: "+logcat_path, 'yellow')
	os.system('adb logcat -c')
	now = datetime.now()
	d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
	cmd=''.join(['nohup adb logcat FiniteState:V *:S > ',''.join([logcat_path,'/',str(d4),'.txt']),' &'])
	os.system(cmd)
		
def Stop_Logcat():
	os.system('pkill adb')

def User_Interact_With_App(driver):
	time.sleep(5)
	click_on_button_by_class_permission(driver,"android.widget.Button")
	source_xml = driver.page_source


os.system('clear')
# os.chdir('../')
cwd=os.getcwd()
df = pd.read_csv('Monkey_Testing_CSV_Files/testing.csv')
filtered_df = df[df['Status'] == 'passed']
phone_name=Get_Phone_Name()
appium_process = os.popen("ps -Af").read()

Start_Logcat('../Data/Logs')
for index, row in filtered_df.iterrows():
	file_path='/'.join(['../Java/Classes',row['Folder'], row['File']])
	cprint(row['File'],'green')

	if os.path.isfile(file_path):
		processname = 'appium'
		proccount = appium_process.count(processname)
		cmd= ' '.join(['adb install-multiple', file_path])
		os.system(cmd)
		try:
			driver = Set_Capabilities(phone_name,row['Main_Class'],row['Main_Activity'],file_path)
		except:
			cprint('unable to set capabilities')
			driver = None
		if driver != None:
			time.sleep(2)
			cprint(driver.current_activity, 'yellow')	
			driver.activate_app(row['Main_Class'])
			time.sleep(10)
			try:	
				User_Interact_With_App(driver)
			except:
				cprint(''.join(['Unable to isntrument app:', row['File']]),'yellow')

		cmd = ' '.join(['adb uninstall', row['Main_Class']])
		os.system(cmd)
	# if index > 3:
	# 	break

Stop_Logcat()		
