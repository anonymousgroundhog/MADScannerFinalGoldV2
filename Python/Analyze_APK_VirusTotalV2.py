# import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob, hashlib, requests, urllib.request
# from termcolor import colored, cprint
# from subprocess import run
# from bs4 import BeautifulSoup

# url='https://www.virustotal.com/gui/file/41843f057fcb56c8faeadb0874ad75d451bfdd6c56c8646befc200e9abb6dc79?nocache=1'

# # f = urllib.request.urlopen(url)
# # myfile = f.read()
# # print(myfile)


# headers = {'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'}

# page = requests.get(url, headers=headers)
# soup = BeautifulSoup(page.content, "html.parser")
# print(soup.prettify())
import os
# from selenium import webdriver 
from selenium.webdriver.common.by import By
# from selenium import webdriver
# from selenium.webdriver import ActionChains
# from selenium.webdriver.support import expected_conditions as ec
# from selenium.webdriver.support.ui import WebDriverWait
# # initialize an instance of the chrome driver (browser)
# driver = webdriver.Chrome()
# # visit your target site
# driver.get('https://www.virustotal.com/gui/file/41843f057fcb56c8faeadb0874ad75d451bfdd6c56c8646befc200e9abb6dc79?nocache=1')

# # scraping logic...

# # release the resources allocated by Selenium and shut down the browser
# # WebElement captcha = driver.findElement(By.xpath("html/body/div[1]/div[3]/div[2]/form/div[5]/div"));
# #         builder.moveToElement(captcha, 50, 30).click().build().perform();
# time.sleep(20)
# positive_res = driver.find_element(By.CLASS_NAME, 'positives')

# driver.quit()
# print(positive_res)

# from selenium import webdriver
# import time

# options = webdriver.ChromeOptions()
# # options.headless = True 
# options.add_argument("start-maximized")
# # options.add_argument("--headless")
# options.add_experimental_option("excludeSwitches", ["enable-automation"])
# options.add_experimental_option('useAutomationExtension', False)
# driver = webdriver.Chrome(options=options)
# driver.get("https://www.virustotal.com/gui/file/41843f057fcb56c8faeadb0874ad75d451bfdd6c56c8646befc200e9abb6dc79")
# time.sleep(3)
# driver.save_full_page_screenshot('./testing_webpage.png')

# positive_res = driver.find_element(By.CLASS_NAME, 'positives')
# print(positive_res)
# element=driver.find_element(By.XPATH, '/html/body/vt-ui-shell/div[2]/file-view//vt-ui-main-generic-report//div/div[1]/div[1]/vt-ui-detections-widget//div/div/div[1]')
# time.sleep(2)
# print(element)
# print(driver.execute_script("return document.querySelector('file-view').shadowRoot.querySelector('vt-ui-file-details').shadowRoot.querySelector('vt-ui-signature-info').shadowRoot.querySelector('vt-ui-expandable-detail').shadowRoot.querySelector('slot')").text)
# search_field = driver.execute_script("return document.querySelector('vt-virustotal-app').shadowRoot.querySelector('vt-auth-checker home-view').shadowRoot.querySelector('vt-ui-search-bar').shadowRoot.querySelector('vt-ui-text-input').shadowRoot.querySelector('input#input')")
# search_field = driver.find_element(By.XPATH, '//*[@id="input"]')
# search_field.send_keys("129.226.130.245")
# time.sleep(8)

from selenium import webdriver
from selenium.webdriver.firefox.options import Options

options = Options()
options.headless = True
browser = webdriver.Firefox(options=options)
browser.set_window_size(1600,800)

os.chdir('../Data/VirusTotal_Screenshots')
url_base='https://www.virustotal.com/gui/file/'

browser.get(''.join([url_base, '41843f057fcb56c8faeadb0874ad75d451bfdd6c56c8646befc200e9abb6dc79']))

path=''.join(['./','41843f057fcb56c8faeadb0874ad75d451bfdd6c56c8646befc200e9abb6dc79', '.png'])
browser.save_full_page_screenshot(path)

browser.close()