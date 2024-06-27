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
# os.chdir('../Data/Androzoo')
# df_filtered.to_csv('results.csv', index=False)
# df = pd.read_csv('results.csv')

os.chdir('../APK/Androzoo_Testing')
user_api_key = input("Enter in api key and press enter: ")

cprint(' '.join(['API key is',user_api_key]), 'green')
# Get_Androzoo_App(df['sha256'], user_api_key)
androzoo = pyandrozoo.pyAndroZoo(user_api_key)
# for this_hash in df['sha256']:
for this_hash in ['62d192ff53a851855ac349ee9e6b71c1dee8fb6ed00502ff3bf00b3d367f9f38', 'f4da643b2b9a310fdc1cc7a3cbaee83e106a0d654119fddc608a4b587c5552a3', 'a4295a2120fc6b75b6a86a55e8c6b380f0dfede3b9824fe5323e139d3bee6f5c', 'e811f04491b9a7859602f8fad9165d1df7127696cc03418ffb5c8ca0914c64da', 'a47049094051135631aea2c9954a6bc7e605ff455cd7ef1e0999042b068a841f', '08f53bbb959132d4769c4cb7ea6023bae557dd841786643ae3d297e280c2ae08', '44102fc646501f1785dcadd591092a81365b86de5c83949c75c380ab8111e4e8', '9c713db272ee6cc507863ed73d8017d07bea5f1414d231cf0c9788e6ca4ff769', '1194433043679ef2f324592220dcd6a146b28689c15582f2d3f5f38ce950d2a8']:
	print(this_hash)
	if ''.join([this_hash, '.apk']) not in os.listdir():
		androzoo.get([this_hash])

os.chdir(pwd)