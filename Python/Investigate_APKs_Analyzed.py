import os, shutil, hashlib, subprocess, pandas as pd, Helper
from google_play_scraper import app


def Change_File_Names_To_Hashes(lst_folders):
	pwd = os.getcwd()
	os.chdir('../APK/')
	for folder in lst_folders:
		os.chdir(folder)
		for this_app in os.listdir():
			this_apps_hash = Get_App_Hash(this_app)
			this_apps_hash_name = ''.join([this_apps_hash, '.apk'])
			os.rename(this_app, this_apps_hash_name)
			print(this_app, this_apps_hash_name)
		os.chdir('../')
	os.chdir(pwd)

def Get_File_Size(file_path):
	file_size_bytes = os.path.getsize(file_path)
	file_size_kb = file_size_bytes / 1024
	file_size_mb = file_size_kb / 1024
	file_size_gb = file_size_mb / 1024
	return(file_size_mb)

def Get_Google_Play_Data(package):
	result = app(
	    package,
	    lang='en', # defaults to 'en'
	    country='us' # defaults to 'us'
	)
	return result

def Get_App_SDK_Version(file):
	aapt_details=subprocess.run(['aapt', 'dump', 'badging', file], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
	sdk = [item for item in aapt_details if "sdkVersion" in item]
	if len(sdk) > 0:
		sdk = sdk[0].split(":")[1].replace("'", '')
	else:
		sdk = ''
	return sdk

def Get_App_Activity(file):
	aapt_details=subprocess.run(['aapt', 'dump', 'badging', file], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
	main_activity = [item for item in aapt_details if "package" in item]
	if len(main_activity) > 0:
		main_activity = main_activity[0].split(" ")[1].replace("name=","").replace("'","")
	else:
		main_activity = ''
	return main_activity

def get_apk_hash(file_path, algorithm='sha256'):
    """
    Calculate the hash of an APK file.
    
    :param file_path: Path to the APK file
    :param algorithm: Hash algorithm to use (md5, sha1, sha256)
    :return: Hexadecimal hash string
    """
    hash_alg = hashlib.new(algorithm)
    
    with open(file_path, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_alg.update(chunk)
    
    return hash_alg.hexdigest()

def Get_App_Hash(file):
	return get_apk_hash(file)

def Get_Necessary_Google_Play_Data_Based_on_DF(df, package_col_name):
	lst_genre=[]
	lst_installs=[]
	lst_reviews=[]
	lst_score=[]
	lst_contains_ads=[]
	lst_developer=[]
	lst_url=[]

	for item in df[package_col_name]:
		try:
			data=Get_Google_Play_Data(item.replace(' ', ''))
			print(item, '\n')
			print('Genre:', data['genre'])
			print('Installs:', data['installs'])
			print('Reviews:', data['reviews'])
			print('Score:', data['score'])
			print('Contains Ads:', data['containsAds'])
			print('Developer:', data['developer'])
			print('URL', data['url'], '\n')

			lst_genre.append(data['genre'])
			lst_installs.append(data['installs'])
			lst_reviews.append(data['reviews'])
			lst_score.append(data['score'])
			lst_contains_ads.append(data['containsAds'])
			lst_developer.append(data['developer'])
			lst_url.append(data['url'])
		except:
			print(item, 'None\n')
			lst_genre.append('None')
			lst_installs.append('None')
			lst_reviews.append('None')
			lst_contains_ads.append('None')
			lst_score.append('None')
			lst_developer.append('None')
			lst_url.append('None')

	df['Genre']=lst_genre
	df['User_Installs']=lst_installs
	df['Number_Of_Reviews']=lst_reviews
	df['Score']=lst_score
	df['Has_Ads']=lst_contains_ads
	df['Developer']=lst_developer
	df['URL']=lst_url

	return(df)

def Malicious_Apps_Analysis():
	pwd=os.getcwd()
	os.chdir('../Data')
	df = pd.read_csv('Application Analysis Gold - Malicious_Apps_Analyzed.csv')
	lst_app_size_mb = []
	lst_sdk_version = []
	for app in df['App Name']:
		file_path=''.join(['../APK/Final_Testing/',app,'.apk'])
		file_size=Get_File_Size(file_path)
		lst_app_size_mb.append(file_size)
		try:
			lst_sdk_version.append(Get_App_SDK_Version(file_path))
		except:
			lst_sdk_version.append('None')
	
	df['File_Size (MB)']=lst_app_size_mb
	df['SDKVersion']=lst_sdk_version
	df=Get_Necessary_Google_Play_Data_Based_on_DF(df, 'App_Activity')
	df = df.drop('URL', axis=1)
	df = df.drop('Reviews', axis=1)
	df.to_csv('APKS_Analyzed_Stats.csv', index=False)
	os.chdir(pwd)

def Androzoo_Analysis():
	pwd=os.getcwd()
	os.chdir('../Data')
	df = pd.read_csv('Application Analysis Gold - Working_On_Data_Interpreting_Androzoo.csv')
	lst_app_size_mb = []
	lst_sdk_version = []
	for app in df['Hash']:
		file_path=''.join(['../APK/Androzoo/',app,'.apk'])
		file_size=Get_File_Size(file_path)
		lst_app_size_mb.append(file_size)
		try:
			lst_sdk_version.append(Get_App_SDK_Version(file_path))
		except:
			lst_sdk_version.append('None')
	
	df['File_Size (MB)']=lst_app_size_mb
	df['SDKVersion']=lst_sdk_version

	df=Get_Necessary_Google_Play_Data_Based_on_DF(df, 'Package')
	df.to_csv('Androzoo_Stats.csv', index=False)
	os.chdir(pwd)

def APKPure_Analysis():
	pwd=os.getcwd()
	os.chdir('../Data')
	df = pd.read_csv('Application Analysis Gold - Apps_Analysis_VirusTotal_Google_Play_APKPure.csv')
	df = df.drop('App Manually Inspect', axis=1)
	df = df.drop('Additional Details for install and testing', axis=1)
	df = df.drop('Has only Google Ads', axis=1)
	df = df.drop('Suspicious App Based on Manual Analysis', axis=1)

	lst_app_size_mb = []
	lst_package = []
	lst_sdk_version = []

	for app in df['App_Name']:
		file_path=''.join(['../APK/APKPure/',app,'.apk'])
		file_size=Get_File_Size(file_path)
		lst_app_size_mb.append(file_size)

		lst_package.append(Get_App_Activity(file_path))
		lst_sdk_version.append(Get_App_SDK_Version(file_path))
	
	df['File_Size (MB)']=lst_app_size_mb
	df['Package']=lst_package
	df['SDKVersion']=lst_sdk_version
	df=Get_Necessary_Google_Play_Data_Based_on_DF(df, 'Package')
	print(df)
	df.to_csv('APKPure_Stats.csv', index=False)
	os.chdir(pwd)

def Valid_APK_Files_To_Test_Analysis():
	pwd=os.getcwd()
	os.chdir('../APK/Valid_APK_Files_To_Test')
	df = pd.read_csv('../../Data/VirusTotal_Screenshots/detections.csv')
	columns=['Hash', 'Package', 'vt_detection', 'vt_labels', 'File_Size', 'SDKVersion', 'Genre', 'User_Installs', 'Number_Of_Reviews', 'Score', 'Has_Ads', 'Developer', 'URL']
	df_to_output = pd.DataFrame(columns=columns)
	lst_app_folders=['Valid_APK_Files_To_Test', 'APKPure', 'Androzoo', 'Androzoo_Testing', 'Google_Play_Apps']
	lst_app_size_mb = []
	lst_package = []
	lst_sdk_version = []

	for this_hash in df['Hash']:
		file_name = ''.join([this_hash, '.apk'])
		print(file_name)
		for this_folder in lst_app_folders:
			this_path=''.join(['../',this_folder])
			if file_name in os.listdir(this_path):
				print('Found: ',file_name)
				this_file_path=''.join([this_path,'/',file_name])
				file_size=Get_File_Size(this_file_path)
				lst_app_size_mb.append(file_size)
				lst_package.append(Get_App_Activity(this_file_path))
				lst_sdk_version.append(Get_App_SDK_Version(this_file_path))
	print(len(df), len(df_to_output))
	df_to_output['Hash']=df['Hash']
	df_to_output['vt_detection']=df['vt_detection']
	df_to_output['vt_labels']=df['vt_labels']
	df_to_output['File_Size (MB)']=lst_app_size_mb
	df_to_output['Package']=lst_package
	df_to_output['SDKVersion']=lst_sdk_version
	df_to_output=Get_Necessary_Google_Play_Data_Based_on_DF(df_to_output, 'Package')
	print(df_to_output)
	df_to_output.to_csv('VirusTotal_Screenshots.csv', index=False)
	os.chdir(pwd)

def Get_Apps_That_Failed():
	helper = Helper.Helper()
	pwd=os.getcwd()
	os.chdir('../Data/APK_Run_Errors')
	file_path='Errors.txt'
	file = open(file_path, 'r')
	lines = file.readlines()
	lst_apks_with_errors = []
	lst_apks_with_install_errors = []
	for line in lines:
		if line.endswith('.apk \n'):#line.__contains__('.apk') and not line.__contains__('['):
			# print('FOUND!!!:',line)
			lst_apks_with_errors.append(line.replace(' \n', ''))
	lst_apks_with_errors = helper.unique(lst_apks_with_errors)
	# print(lst_apks_with_errors)
	file_path='APK_Install_Errors.txt'
	file = open(file_path, 'r')
	lines = file.readlines()
	for line in lines:
		if line.endswith('.apk \n'):
			try:
				lst_apks_with_errors.remove(line.replace(' \n', ''))
			except:
				pass
	print(lst_apks_with_errors)
	os.chdir(pwd)
os.system('clear')
# os.chdir('../APK/Final_Testing')

# lst_apps_androzoo=['1E73C89FD19F57A9634D0EF8B7AB3A1DC9D26207CCAF2F37BEEE8EDB8E848F76', '2CA414340473F9E706848CC75EE3D8A58B1FBE33A8B0E60EE0BB30B877A7B8D5', '017D4ED98A1C94CD6B7F1C5ACDD5178C1C485CE3F616741C9A9535868362F077', '2E21E23EF46D9C4773EAEEF05749491C8E032C7F134EF6011A3D922A7DA693FE', '003483FF2A74BF9B2AA6CC20850DF8D0EA0EEDC16089E6B65159D692157E658C', '2D1D76CAEF282E40AE76FCAD2FFA94BD18690ABD652E804A6562AE9020345109', '2C338A77F0EFF6B811433351889D2574CDB6F56D93E6806FFE03FCDE2F8C863F', '0BC167335F1F593ECD96CC06043241B2CBFD87D6F3DC511FABF9CE8C5B5F6B40', '19B3C283B02B627DA6CFEDD2EA6CF1A14A7DBEA1237BD0E14651C5FD8AC9A25C', '1D7E323A47F13930262612E7A6A3F22C2486F3DACA1C372B479928FCFEA13812', '0C01126C72E8CEABB6727ED1CCCC82A365AEAA416BE21DAC5661597AB7037B6B']
# lst_apps_apkpure=['TeachMeAnatomy5.34Apkpure', 'AllEventsinCity-Discover10.1Apkpure', 'ArtFlowPaintDrawSketchbook2.9.26Apkpure', 'BabyDevelopmentParenting1.46Apkpure', 'BooksyforCustomers2.10.2354Apkpure', 'BotHubAIChatbotHub1.0.61Apkpure', 'BusinessGame8.0Apkpure', 'CrossyRoad5.3.1Apkpure', 'DJMusicmixer-DJMixStudio1.2.6Apkpure', 'ESPNFantasySports8.5.0Apkpure', 'hooplaDigital4.69.2Apkpure', 'Joylada6.30.3Apkpure', 'ParentLab–DailyParentingApp4.5.0Apkpure', 'VividSeatsEventTickets2023.58.0Apkpure', 'Винлаб—алкогольныенапитки4.5.6Apkpure', 'BloombergFinanceMarketNews5.98.0.3930355.fd19b588eApkpure', 'com.ror.removal', 'com.hubx.imagination', 'com.aige.hipaint', 'com.inforcegames.app3dmodelling', 'com.pixilart.app', 'com.enflick.android.TextNow', 'com.PixelStudio', 'LinkedInJobsBusinessNews4.1.833.1Apkpure', 'FlipaClipCreate2DAnimation3.3.7Apkpure', 'TappytoonComicsNovels3.35.1Apkpure', 'SmartTools-Utilities20.6Apkpure', 'CarGurusUsedNewCars2.77Apkpure', 'WEBTOON2.12.10Apkpure', 'AlfredCameraHomeSecurityapp2023.10.1Apkpure', 'AudiomackMusicDownloader6.25.4Apkpure', 'POCKETCOMICSPremiumWebtoon5.3.1Apkpure', 'B612AIPhotoVideoEditor12.1.25Apkpure', 'VideoMaker1.485.136Apkpure', 'YouCamMakeup-SelfieEditor6.10.1Apkpure', 'UltaBeautyMakeupSkincare8.2.1Apkpure', 'AutoZone-AutoPartsRepair23.5.1Apkpure', 'MangaToon-MangaReader3.05.06Apkpure', 'hooplaDigital4.69.2Apkpure1', 'AIChat-AIChatbotAssistant1.1.3Apkpure', 'Call_of_Dragons_1.0.14.69_Apkpure', 'HilyDatingapp.MeetPeople.3.8.0Apkpure', 'HeyBeautyLovePuzzle1.0.4.8Apkpure', 'ReadlyMagazinesNewspapers6.13.0Apkpure', 'Chick-fil-A®2023.8.2Apkpure', 'BumbleDatingFriendsapp5.324.0Apkpure', 'KMPlayer-AllVideoPlayer42.09.132Apkpure', 'Angry_Birds_2_3.11.3_Apkpure', 'Subway®29.28.0Apkpure', 'Gametime-LastMinuteTickets2023.12.0Apkpure', 'BeautyPlus-Retouch', 'Filters7.6.034Apkpure', 'BadooDating.Chat.Meet.5.324.0Apkpure', 'ReadlyMagazinesNewspapers6.12.1Apkpure', 'Whiteout_Survival_1.7.9_Apkpure', 'AmazonMusicSongsPodcasts23.8.0Apkpure', 'AppClose-co-parentingapp3.1.1Apkpure', 'DesignHomeLifestyleGame1.97.075Apkpure', 'StepTracker-Pedometer1.3.8Apkpure', 'PlentyofFishDatingApp4.95.0.1513060Apkpure']
# lst_apps_google_play=['com.ror.removal', 'com.hubx.imagination', 'com.aige.hipaint', 'com.inforcegames.app3dmodelling', 'com.pixilart.app', 'com.enflick.android.TextNow', 'com.PixelStudio', 'Filters7.6.034Apkpure']


# Copy_From_Folder('Androzoo',lst_apps_androzoo)

# Copy_From_Folder('APKPure',lst_apps_apkpure)
# Copy_From_Folder('Google_Play_Download_Test',lst_apps_google_play)
# for file in lst_apps_androzoo:
# 	src=''.join(['../Androzoo/',file,'.apk'])
# 	dst=''.join(['./', file, '.apk'])
# 	shutil.copyfile(src, dst)

# for file in lst_apps_apkpure:
# 	try:
# 		src=''.join(['../APKPure/',file,'.apk'])
# 		dst=''.join(['./', file, '.apk'])
# 		shutil.copyfile(src, dst)
# 	except:
# 		print('no file found for: ', file)

# for file in os.listdir():
	# print(file, get_apk_hash(file))
	# print(file, Get_App_Activity(file))



# Malicious_Apps_Analysis()
# Androzoo_Analysis()
# APKPure_Analysis()
# Change_File_Names_To_Hashes(['Testing_Google_Ads_Logs', 'APKPure'])
# Valid_APK_Files_To_Test_Analysis()
Get_Apps_That_Failed()