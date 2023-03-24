import os, time, subprocess, sys
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient

def click_on_button_by_class(driver, id):
    for elem in driver.find_elements(By.CLASS_NAME, id):
        if len(driver.find_elements(By.CLASS_NAME, id)) > 0:  
            try:
                print(elem)
                elem.click()
            except:
                print(''.join(["elem doesn't exist:",str(id)]))
                continue
def click_on_button_by_class_permission(driver, id):
        for elem in driver.find_elements(By.CLASS_NAME, id):
            if 'allow' in elem.text.lower():
                elem.click()



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
# print(desired_capabilities)
driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities)
time.sleep(5)
# source_xml = driver.page_source
time.sleep(2)
click_on_button_by_class_permission(driver,"android.widget.Button")
# source_xml = driver.page_source
time.sleep(2)
time.sleep(2)
click_on_button_by_class_permission(driver,"android.widget.Button")
time.sleep(2)
# source_xml = driver.page_source

click_on_button_by_class(driver,"android.widget.LinearLayout")
time.sleep(2)
click_on_button_by_class(driver,"android.widget.TextView")
driver.swipe(150, 800, 250, 200, 1000)