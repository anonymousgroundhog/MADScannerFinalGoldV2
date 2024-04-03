import os, shutil

os.system('clear')
os.chdir('../Java/Classes/sootOutput')

# print(os.listdir())
apps = ['BooksyforCustomers2.10.2354Apkpure', 'Винлаб—алкогольныенапитки4.5.6Apkpure', 'Joylada6.30.3Apkpure', 'AllEventsinCity-Discover10.1Apkpure', 'VividSeatsEventTickets2023.58.0Apkpure', 'AutoZone-AutoPartsRepair23.5.1Apkpure', 'BabyDevelopmentParenting1.46Apkpure', 'LinkedInJobsBusinessNews4.1.833.1Apkpure', 'TeachMeAnatomy5.34Apkpure', 'BusinessGame8.0Apkpure', 'hooplaDigital4.69.2Apkpure', 'hooplaDigital4.69.2Apkpure1', 'BotHubAIChatbotHub1.0.61Apkpure', 'ArtFlowPaintDrawSketchbook2.9.26Apkpure', 'BeautyPlus-Retouch,Filters7.6.034Apkpure', 'ParentLab–DailyParentingApp4.5.0Apkpure', 'ESPNFantasySports8.5.0Apkpure', 'HeyBeautyLovePuzzle1.0.4.8Apkpure', 'DJMusicmixer-DJMixStudio1.2.6Apkpure', 'CrossyRoad5.3.1Apkpure']

# for app in apps:
# 	app_to_copy = ''.join(['signed', app,'.apk'])
# 	print(app_to_copy)
# 	shutil.copy(app_to_copy, '/'.join(['APK_Files_To_Manual_Test',app_to_copy]))

os.chdir('APK_Files_To_Manual_Test')
for file in os.listdir():
	print(file)
	os.system(' '.join(['adb install', file]))
