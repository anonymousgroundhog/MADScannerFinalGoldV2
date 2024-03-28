import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, glob, hashlib
from termcolor import colored, cprint
from subprocess import run

os.system('clear')

lst_app_names = []
lst_app_hashes = []

Test_Folder = 'APKPure'
os.chdir(''.join(['../APK/',Test_Folder]))
for file in os.listdir():
	# path = ''.join(['../APK/',Test_Folder,'/',file])
	cprint('\t File is Currently:'+file, 'green')
	hash_function = hashlib.sha256()
	with open(file, 'rb') as file:
	    # Read the file in 4096-byte chunks
		for chunk in iter(lambda: file.read(4096), b""):
			hash_function.update(chunk)
		hash_value = hash_function.hexdigest()
	print(hash_value)
	lst_app_names.append(file.name.replace('.apk', ''))
	lst_app_hashes.append(hash_value)

data = {
        'App_Name': lst_app_names,
        'App_Hashes': lst_app_hashes
    }
all_data_df = pd.DataFrame(data)
print(all_data_df)

all_data_df.to_csv('../../Data/App_VirusTotal_Details.csv', index=False)