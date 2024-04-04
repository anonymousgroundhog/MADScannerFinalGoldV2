import os, pyandrozoo, pandas as pd
from termcolor import colored, cprint

def Get_Androzoo_App(this_hash_list, user_api_key):
	pwd=os.getcwd()
	os.chdir('../APK/Androzoo')
	os.chdir(pwd)
	# if ''.join([this_hash_list,'.apk']) not in os.listdir():


os.system('clear')
pwd=os.getcwd()
# df = pd.read_csv('../Androzoo/latest.csv')
# # print(df[['sha256', 'vt_detection', 'vt_scan_date']])
# # print(df.info())
# df['vt_scan_date'] = df['vt_scan_date'].astype('datetime64[ns]')
# df_filtered = df.query('vt_detection > 0')
# df_filtered = df_filtered.query('markets == "play.google.com"')
# df_filtered = df_filtered.query('dex_size > 100')
# df_filtered = df_filtered.query('vt_detection > 1')
# df_filtered = df_filtered.drop(columns=['sha1', 'md5', 'markets', 'apk_size', 'vt_scan_date'])
# df_filtered['dex_date'] = pd.to_datetime(df_filtered['dex_date'])

# df_filtered = df_filtered[df_filtered['dex_date'].dt.year > 2022]
# print(df_filtered)
os.chdir('../Data/Androzoo')
# df_filtered.to_csv('results.csv', index=False)
df = pd.read_csv('results.csv')

os.chdir('../../APK/Androzoo')
user_api_key = input("Enter in api key and press enter: ")

cprint(' '.join(['API key is',user_api_key]), 'green')
# Get_Androzoo_App(df['sha256'], user_api_key)
androzoo = pyandrozoo.pyAndroZoo(user_api_key)
for this_hash in df['sha256']:
	print(this_hash)
	if ''.join([this_hash, '.apk']) not in os.listdir():
		androzoo.get([this_hash])

os.chdir(pwd)