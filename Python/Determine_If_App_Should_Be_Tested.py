import os, shutil, time, pandas as pd 

from termcolor import colored, cprint
from google_play_scraper import app
# os.chdir('../')

def Get_Main_Activity(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep launchable'])
	try:
		cmd=os.popen(str_cmd).read().replace('launchable-activity: name=', '').split(' ')[0].replace("'",'')
	except:
		cmd=''
	# cprint(cmd, 'cyan')
	return cmd

def Get_Main_Class(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep package'])
	try:
		cmd=os.popen(str_cmd).read().replace('package:', '').split(' ')[1].replace('name=','').replace("'",'')
	except:
		cmd=''
	# cprint(cmd, 'cyan')
	return cmd

def Copy_Files_To_Monkey_Testing_Folder(this_folder):
	# os.chdir('../')
	cwd=os.getcwd()
	os.chdir('../Java/Classes')
	for file in os.listdir():
		if not os.path.isfile(file):
			os.chdir(file)
			files=os.listdir()
			for this_file in files:
				if 'signed' in this_file:
					cprint(this_file, 'green')
					# COPY TO TESTING FOLDER
					dst='/'.join(['..',this_folder,this_file])
					try:
						shutil.copyfile(this_file,dst, follow_symlinks=True)
					except:
						continue
					shutil.rmtree('../'+file)
			os.chdir('../')
	os.chdir(cwd)

def Check_Files_In_Folder_Have_Main_Activity(this_folder, df):
	cwd=os.getcwd()
	this_path='/'.join(['../Java/Classes',this_folder])
	try:
		os.chdir(this_path)
		for this_file in os.listdir():
			main_activity=Get_Main_Activity(this_file)
			main_class=Get_Main_Class(this_file)
			if main_activity != '' and main_class != '':
				cprint(' '.join([this_file,'pass']), 'green')
				new_row = pd.DataFrame([{'File': this_file, 'Folder': this_folder, 'Status': 'passed', 'Main_Activity':main_activity, 'Main_Class':main_class}])
				df = pd.concat([df, new_row], ignore_index=True)
			else:
				new_row = pd.DataFrame([{'File': this_file, 'Folder': this_folder, 'Status': 'failed','Main_Activity':'', 'Main_Class':''}])
				df = pd.concat([df, new_row], ignore_index=True)
				cprint(' '.join([this_file,'fail']), 'red')
		os.chdir(cwd)
	except:
		cprint(''.join(['no directory for:',this_path]), 'yellow')
	os.chdir(cwd)
	return df

def Get_API_Level_For_APK(df):
	cwd=os.getcwd()
	df['compileSDKVersion']=None
	for index,row in df.iterrows():
		monkey_test_folder='/'.join(['../Java/Classes',row['Folder']])
		file_loc = '/'.join([monkey_test_folder,row['File']]) 
		if os.path.isfile(file_loc):
			str_cmd = ' '.join(['aapt dump badging', file_loc, '| grep package'])
			try:
				cmd=os.popen(str_cmd).read().replace('package:', '').split(' ')[6].replace('compileSdkVersion=','').replace("'",'')
				df.loc[index, 'compileSDKVersion'] =cmd
			except:
				cmd=''
	os.chdir(cwd)
	return(df)

def Scrape_Google_Play(main_class):
	try:
		result = app( main_class, lang='en', # defaults to 'en'
		    country='us' # defaults to 'us'
		)
		return result
	except:
		return None

df = pd.DataFrame(columns=['File','Folder','Status']) 
os.system('clear')
#Copy_Files_To_Monkey_Testing_Folder('APK_Files_To_Monkey_Test')
df=Check_Files_In_Folder_Have_Main_Activity('APK_Files_To_Monkey_Test', df)
df = Get_API_Level_For_APK(df)

df['Has_Ads']=None
df['App_Category']=None
for index,row in df.iterrows():
	main_class=row['Main_Class']
	print(main_class)
	if row['Status'] != 'failed':
		result=Scrape_Google_Play(main_class)
		if result != None:
			has_ads=result['containsAds']
			app_category = str([category["name"] for category in result["categories"]])
			df.loc[index, 'Has_Ads']=has_ads
			df.loc[index, 'App_Category']=app_category
		else:
			df.loc[index, 'Has_Ads']='unknown'
	else:
		cprint('skipping','yellow')

#df = Check_If_App_Has_Ads(df)
#df = Get_App_Category(df)
print(df)
df.to_csv("testing.csv", index=False)
