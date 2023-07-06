from appium import webdriver
from xml.etree import ElementTree as ET

import os, time, subprocess, sys
# from pathlib import Path
# Android environment
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
            "deviceName": sys.argv[1],
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
print(source_xml)
time.sleep(2)

# Find elements by class name
id='android.widget.Button'
elements = driver.find_elements(By.CLASS_NAME, id)

# Click on the desired element
if elements:
    # Select the desired element, e.g., the first one in the list
    desired_element = elements[0]
    desired_element.click()
else:
    print('Element not found')


id='android.widget.LinearLayout'
elements = driver.find_elements(By.CLASS_NAME, id)

# Click on the desired element
if elements:
    # Select the desired element, e.g., the first one in the list
    desired_element = elements[0]
    desired_element.click()
else:
    print('Element not found')

id='android.widget.TextView'
elements = driver.find_elements(By.CLASS_NAME, id)

# Click on the desired element
if elements:
    # Select the desired element, e.g., the first one in the list
    desired_element = elements[0]
    desired_element.click()
else:
    print('Element not found')
# Close the driver
driver.quit()
