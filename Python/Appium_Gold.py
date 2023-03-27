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
            "appium:wdaStartupRetries": 5,
            "autoGrantPermissions": True,
            "appActivity": sys.argv[3],
            "adbExecTimeout": 30000
}


# Appium1 points to http://127.0.0.1:4723/wd/hub by default 
# el = driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value='item')


# print(desired_capabilities)
driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities)
source_xml = driver.page_source
time.sleep(2)
click_on_button_by_class_permission(driver,"android.widget.Button")
source_xml = driver.page_source
time.sleep(4)
click_on_button_by_class_permission(driver,"android.widget.Button")
time.sleep(2)

source_xml = driver.page_source

time.sleep(5)
click_on_button_by_class_close_Ad(driver,"android.widget.Button")
time.sleep(5)
source_xml = driver.page_source
click_on_button_by_class_close_Ad(driver,"android.widget.Button")
# time.sleep(5)
# click_on_button_by_class_close_Ad(driver,"android.widget.Button")
# driver.navigate().back()
# driver.start_activity(sys.argv[2], sys.argv[3])

time.sleep(5)
click_on_button_by_class(driver,"android.widget.LinearLayout")
time.sleep(2)
click_on_button_by_class(driver,"android.widget.TextView")
time.sleep(2)
driver.swipe(150, 800, 250, 200, 1000)
time.sleep(3)
click_on_button_by_class_close_Ad(driver,"android.widget.Button")
time.sleep(3)
# print(driver.page_source)