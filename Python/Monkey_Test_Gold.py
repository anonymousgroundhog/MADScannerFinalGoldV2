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

def Get_Main_Activity(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep launchable'])
	try:
		cmd=os.popen(str_cmd).read().replace('launchable-activity: name=', '').split(' ')[0].replace("'",'')
	except:
		cmd=''
	# cprint(cmd, 'cyan')
	return cmd

def Get_Main_Class(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep package'])
	try:
		cmd=os.popen(str_cmd).read().replace('package:', '').split(' ')[1].replace('name=','').replace("'",'')
	except:
		cmd=''
	# cprint(cmd, 'cyan')
	return cmd

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
                    continue

def Start_Logcat(logcat_path):
	cprint("Logging to: "+logcat_path, 'yellow')
	os.system('adb logcat -c')
	now = datetime.now()
	d4 = now.strftime("%m-%d-%Y_%H:%M:%S")
	cmd=''.join(['nohup adb logcat FiniteState:V *:S > ',''.join([logcat_path,'/',str(d4),'.txt']),' &'])
	os.system(cmd)
		
def Stop_Logcat():
	os.system('pkill adb')


os.system('clear')
# os.chdir('../')
cwd=os.getcwd()
Start_Logcat('../Data/Logs')
os.chdir('../Java/Classes')
app_counter=0
for file in os.listdir():
	app_counter+=1
	number_of_apps=len(os.listdir())
	cprint(' '.join(['Running app:',str(app_counter),'/',str(number_of_apps)]),'yellow')
	if not os.path.isfile(file):
		os.chdir(file)
		main_activity = Get_Main_Activity(file)
		main_class = Get_Main_Class(file)
		# MAKE SURE SIGNED FILE EXISTS
		signed_file = ''.join(['signed',file])
		if os.path.isfile(signed_file) and main_class != '' and main_activity != '':
			phone_name=Get_Phone_Name()
			processname = 'appium'
			appium_process = os.popen("ps -Af").read()
			proccount = appium_process.count(processname)
			if phone_name != "" and proccount != 0:
				cprint(' '.join(['File:',signed_file]),'yellow')
				cprint(phone_name,'yellow')
				cprint(' '.join(['Main activity:', main_activity]), 'yellow')
				cprint(' '.join(['Main class:', main_class]), 'yellow')
				cprint('RUNNING Monkey TEST', 'green')
				try:
					cmd= ' '.join(['adb install-multiple', signed_file])
					os.system(cmd)
					cprint('\n\tSetting Capabilities!!!', 'cyan')
					# cprint(''.join(['\nSetting capabilities for dir:', os.getcwd()]), 'cyan')
					cprint(os.getcwd(),'green')
					driver = Set_Capabilities(phone_name,main_class,main_activity,signed_file)
					xml_elements = Get_XML_Output_Of_Interest(driver, 'android.widget.TextView')

					for item in xml_elements:
						time.sleep(2)
						try:
							click_on_button_by_class(driver, item)
						except:
							cprint('unable to click anymore', 'yellow')
					cprint(xml_elements, 'green')
					time.sleep(5)
				except:
					cprint('Unable to install ' + signed_file, 'yellow')
				cmd = ' '.join(['adb uninstall', main_class])
				os.system(cmd)

			else:
				cprint("Error!!!", 'yellow')
				cprint('Make sure appium server is running, emulator android device is running, and retry again!!!', 'yellow')
		os.chdir("../")

os.chdir(cwd)
Stop_Logcat()		
