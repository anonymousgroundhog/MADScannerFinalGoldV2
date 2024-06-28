import os, shutil, hashlib, subprocess, pandas as pd

from google_play_scraper import app
def Get_Google_Play_Data(package):
	result = app(
	    package,
	    lang='en', # defaults to 'en'
	    country='us' # defaults to 'us'
	)
	return result
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
	return sha256_hash(file)

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
os.chdir('../Data')
df = pd.read_csv('Application Analysis Gold - Malicious_Apps_Analyzed.csv')

# print(df)

lst_genre=[]
lst_installs=[]
lst_reviews=[]
lst_contains_ads=[]
lst_url=[]

for item in df['App_Activity']:
	try:
		data=Get_Google_Play_Data(item.replace(' ', ''))
		print(item, '\n')
		print('Genre:', data['genre'])
		print('Installs:', data['installs'])
		print('Reviews:', data['reviews'])
		print('Contains Ads:', data['containsAds'])
		print('URL', data['url'], '\n')

		lst_genre.append(data['genre'])
		lst_installs.append(data['installs'])
		lst_reviews.append(data['reviews'])
		lst_contains_ads.append(data['containsAds'])
		lst_url.append(data['url'])
	except:
		print(item, 'none\n')
		lst_genre.append('none')
		lst_installs.append('none')
		lst_reviews.append('none')
		lst_contains_ads.append('none')
		lst_url.append('none')

df['Genre']=lst_genre
df['User_Installs']=lst_installs
df['Reviews_Score']=lst_reviews
df['Has_Ads']=lst_contains_ads
df['URL']=lst_url
print(df)
df.to_csv('APKS_Analyzed.csv')