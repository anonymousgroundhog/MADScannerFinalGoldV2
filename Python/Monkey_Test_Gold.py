# THIS FILE IS SPECIFICALLY FOR MONKEY TESTING EACH APP AND LOGGING THE DETAILS
import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob, numpy as np
import unittest
from termcolor import colored, cprint
from subprocess import run
# Android environment
# from appium import webdriver
# from appium.webdriver.common.touch_action import TouchAction
# from xml.etree import ElementTree as ET
# from appium import webdriver
# from selenium.webdriver.common.by import By
# from selenium.common.exceptions import NoSuchElementException
# from ppadb.client import Client as AdbClient
# from appium.options.android import UiAutomator2Options
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy

# Import Appium UiAutomator2 driver for Android platforms (AppiumOptions)
from appium.options.android import UiAutomator2Options
from path import Path
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
		# if phone_name.__contains__('offline'):
		# 	print('emulator offline!!!', 'red')
		# 	phone_name=''
	except:
		# print('No Phone Found!!!', 'red')
		phone_name=''
	return phone_name

def Get_Main_Activity(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep launchable'])
	cmd=os.popen(str_cmd).read().replace('launchable-activity: name=', '').split(' ')[0].replace("'",'')
	# cprint(cmd, 'cyan')
	return cmd

def Get_Main_Class(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep package'])
	cmd=os.popen(str_cmd).read().replace('package:', '').split(' ')[1].replace('name=','').replace("'",'')
	# cprint(cmd, 'cyan')
	return cmd

os.system('clear')
# os.chdir('../')
cwd=os.getcwd()
os.chdir('../Java/Classes')
for file in os.listdir():
	if not os.path.isfile(file):
		os.chdir(file)
		main_activity = Get_Main_Activity(file)
		main_class = Get_Main_Class(file)
		# MAKE SURE SIGNED FILE EXISTS
		signed_file = ''.join(['signed',file])
		if os.path.isfile(signed_file):
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
				# try:
				cmd= ' '.join(['adb install-multiple', signed_file])
				os.system(cmd)
				print('\n\tSetting Capabilities!!!', 'cyan')
				# cprint(''.join(['\nSetting capabilities for dir:', os.getcwd()]), 'cyan')
				cprint(os.getcwd(),'green')
				Set_Capabilities(phone_name,main_class,main_activity,signed_file)
				time.sleep(5)
				# except:
				# 	cprint('Unable to install'+signed_file, 'yellow')
				cmd = ' '.join(['adb uninstall', main_class])
				os.system(cmd)

			else:
				cprint("Error!!!", 'yellow')
				cprint('Make sure appium server is running, emulator android device is running, and retry again!!!', 'yellow')

		os.chdir("../")