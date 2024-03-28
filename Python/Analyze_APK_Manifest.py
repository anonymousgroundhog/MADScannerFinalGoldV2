import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob
from termcolor import colored, cprint
from subprocess import run

os.system('clear')
# get_app_names = Get_App_Names.Get_App_Names()
Test_Folder = 'APKPure'
for file in os.listdir(''.join(['../APK/',Test_Folder])):
	path = ''.join(['../APK/',Test_Folder,'/',file])
	# print('path is currently:', path)
	# try:
	aapt_details=subprocess.run(['aapt2', 'dump', 'xmltree', path, '--file', 'AndroidManifest.xml'], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
	admob = [item for item in aapt_details if "ca-app" in item]
	if file.__contains__('LinkedInJobsBusinessNews4.1.833.1Apkpure'):
		cprint('\t File is Currently:'+file, 'green')
		print(admob)
		# print(aapt_details)