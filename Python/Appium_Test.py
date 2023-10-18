import os, time, subprocess, sys, pandas as pd
# from pathlib import Path
# Android environment
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from xml.etree import ElementTree as ET
from appium import webdriver
# Options are only available since client version 2.3.0
# If you use an older client then switch to desired_capabilities
# instead: https://github.com/appium/python-client/pull/720
# from appium.options.android import UiAutomator2Options
# from appium.webdriver.common.appiumby import AppiumBy


# from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient


def click_on_element_in_dataframe(dataframe, row_num):
	element_to_click=dataframe.loc[row_num, 'class']
	element_index=dataframe.loc[row_num, 'index']
	dataframe.loc[row_num, 'clicked']=True
	elements = driver.find_elements(By.CLASS_NAME, element_to_click)
	# print(elements)
	if elements:
		desired_element = elements[int(element_index)]
		desired_element.click()
		print(element_to_click+" Clicked!!!")
		return driver.page_source
	else:
		print('Element not found')

def get_page_content(driver,pagenum):
	source_xml = driver.page_source
	# print(source_xml)
	page=[]
	classes=[]
	index=[]
	text=[]
	xml_split_data = source_xml.split("\r\n")
	if not str(xml_split_data).__contains__("android.widget.EditText"):
		for line in xml_split_data:
			if line.__contains__("android") and not line.__contains__("</") and line.__contains__('clickable="true"'):
				line_fixed=line.strip().replace('displayed="true"',"").replace(">","").replace("<","").replace("/","").strip()
				line_array=line_fixed.split('" ')
				# print("Contains Web View:" + str(line_fixed.__contains__("android.widget.EditText")))
				# if not line_fixed.__contains__("android.widget.EditText"):
				for item in line_array:
					item = item.replace('"',"")
					if item.__contains__("class="):
						classes.append(item.replace("class=",""))
						page.append(pagenum)
					if item.__contains__("index="):
						index.append(item.split(" ").pop().replace("index=",""))
					if item.__contains__("text="):
						text.append(item.replace("text=",""))
	# else:
	# 	TouchAction(driver).tap(None, 582, 110, 2).perform()
	# 	time.sleep(4)
	# 	TouchAction(driver).tap(None, 719, 127, 2).perform()
	# 	time.sleep(4)
		# TouchAction(driver).tap(None, 630, 207, 2).perform()
		# code="187"
		# driver.press_keycode(code)
		# # code="301"
		# # driver.press_keycode(code)
		# # driver.press_keycode("4")
		# source_xml = driver.page_source
		# TouchAction(driver).tap(None, 626, 1148, 2).perform()
		# time.sleep(2)
		# TouchAction(driver).tap(None, 100, 712, 2).perform()
		# # print(source_xml)
		# # android.widget.ImageView
		# # click_on_button_by_class(driver, "android.widget.ImageView")
		# # driver.close_app()
		# # driver.swipe(150, 800, 250, 400, 1000)
		# # driver.swipe(500, 500, 50, 300, 400)
	
	return (page,classes,index,text)

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

desired_capabilities = {
            "platformName": "Android",
            "deviceName": sys.argv[1], #7040018020065015
            "appPackage": sys.argv[2],
            "noReset": True,
            "autoacceptalerts": True,
            "appium:wdaStartupRetries": 6,
            "autoGrantPermissions": True,
            "appActivity": sys.argv[3],
            "adbExecTimeout": 30000
}


# Appium1 points to http://127.0.0.1:4723/wd/hub by default 
# el = driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='item')


# print(desired_capabilities)
driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities)
source_xml = driver.page_source
# print(source_xml)
time.sleep(2)
click_on_button_by_class_permission(driver,"android.widget.Button")
source_xml = driver.page_source
# time.sleep(4)
click_on_button_by_class_permission(driver,"android.widget.Button")
# time.sleep(15) #UNCOMMENT FOR LIVE TEST
driver.swipe(150, 800, 150, 400, 1000)
driver.swipe(150, 400, 150, 800, 1000)
# time.sleep(10)
source_xml = driver.page_source
pagenum=0
content=get_page_content(driver,pagenum)
page=content[0]
classes=content[1]
index=content[2]
text=content[3]
data = {
	'class': classes,
	'text': text,
	'index': index,
	'page':page
}
# print("Data is:" + str(content))
dataframe = pd.DataFrame(data)
dataframe['clicked']=False
print(dataframe)
# if dataframe.empty:

if not dataframe.empty:
	source_xml = click_on_element_in_dataframe(dataframe,0)
	# driver.press_keycode(code)
	pagenum=pagenum+1
	content=get_page_content(driver,pagenum)
	page=content[0]
	classes=content[1]
	index=content[2]
	text=content[3]

	data = {
		'class': classes,
		'text': text,
		'index': index,
		'page':page
	}
	dataframe2 = pd.DataFrame(data)
	dataframe2['clicked']=False
	dataframe=dataframe.append(dataframe2)
	time.sleep(8)
	# driver.swipe(150, 800, 250, 200, 1000)
	print(dataframe)
	dataframe.to_csv(''.join(["../Data/CSV_Files/",sys.argv[2].replace(".","_"),".csv"]), index=False)
	TouchAction(driver).tap(None, 582, 110, 2).perform()
	time.sleep(2)
	TouchAction(driver).tap(None, 719, 127, 2).perform()
	time.sleep(3)
	TouchAction(driver).tap(None, 363, 304, 2).perform()
	time.sleep(3)
	TouchAction(driver).tap(None, 530, 816, 2).perform()
	time.sleep(3)
	code="187"
	driver.press_keycode(code)
	time.sleep(3)
	TouchAction(driver).tap(None, 370, 1201, 2).perform()
	# time.sleep(8)
#print(lines_of_interest)
#elements_to_click_on=['android.widget.Button','android.widget.LinearLayout','android.widget.TextView','android.widget.Button']
#for elem_to_click in elements_to_click_on:
#	elements = driver.find_elements(By.CLASS_NAME, elem_to_click)
#	print(elements)
#	if elements:
#		print("Found element "+elem_to_click)
#		desired_element = elements[0]
#		desired_element.click()
#		driver.swipe(150, 800, 250, 200, 1000)
#	else:
#		print('Element not found')
driver.quit()
