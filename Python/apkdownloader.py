import urllib3, os, re, webbrowser, shutil, time
from bs4 import BeautifulSoup
from google_play_scraper import app, Sort, reviews_all, reviews, search
from urllib.request import Request, urlopen, urlretrieve

def get_top_n_number_of_apps(category, num_apps_to_investigate):
    results = search(
    str(category),
    lang="en",  # defaults to 'en'
    country="us",  # defaults to 'us'
    # sort=Sort.NEWEST,
    n_hits=num_apps_to_investigate  # defaults to 30 (= Google's maximum)
)
    # print(results)
    return [result for result in results]

def get_download_links_from_apkpure(list_of_apps):
    # div.first.brand.is-brand.sa-all-div.sa-apps-div.mb
    download_apk_links = []
    for apk in list_of_apps:
        link = None
        print(' '.join([apk['appId'], "(",apk['title'], ")"]))
        url = ''.join(['https://m.apkpure.com/',apk['title'].lower().replace(" ", "-").replace('®',''),'/',apk['appId'],'/download'])
        print(url)
        req = Request(
        url=url, 
        headers={'User-Agent': 'Mozilla/5.0'}
        )
        webpage = urlopen(req).read()
        soup = BeautifulSoup(webpage, 'html.parser')
        # print(soup)
        link = soup.find('a', {'class', 'download-start-btn'})
        if link is not None: 
            # print("LINK TO DOWNLOAD APK:"+str(link['href']))
            download_apk_links.append(str(link['href']))
    return download_apk_links

def open_links_in_browser(download_apk_links):
    for link in download_apk_links:
        print(link)
        last_item = link.split('/').pop().replace('?version=latest', '')
        webbrowser.open(link)

def move_file_from_downloads(downloads_dir):
    if os.getcwd().__contains__("Python"):
        os.chdir('../APK')
        for item in os.listdir(downloads_dir):
            old_path = ''.join([downloads_dir,item])
            new_path = ''.join([os.getcwd(),'/',old_path.replace(' ', '_').split('/').pop()])
            print(new_path)
            shutil.move(old_path, new_path)

def app_categories_print():
    categories = ["Art and Design", "Auto and Vehicles", "Beauty", "Books and Reference", "Business", 
    "Comics", "Communications", "Dating", "Education", "Entertainment", "Events", "Finance", 
    "Food and Drink", "Games", "Health and Fitness", "House and Home", "Libraries and Demo", "Lifestyle", 
    "Maps and Navigation", "Medical", "Music and Audio", "News and Magazines", "Parenting", 
    "Personalization", "Photography", "Productivity", "Shopping", "Social", "Sports", "Tools", 
    "Travel and Local", "Video Players and Editors", "Weather"]
    for category in categories:
        print(category)

def install_apps_from_apk_folder(list_of_apps):
    if os.getcwd().__contains__("APK"):
        # print(os.getcwd())
        for app in list_of_apps:
            os.system(' '.join(['adb install', app]))
    else:
        # print(os.getcwd())
        os.chdir("../APK")
        for app in list_of_apps:
            os.system(' '.join(['adb install', app]))

def compile_framework():
    if os.getcwd().__contains__("Java"):
        os.system("javac -d Classes -cp '../Jar_Libs/*' *.java JavaHelper/* ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java")
    else:
        os.chdir("../Java")
        os.system("javac -d Classes -cp '../Jar_Libs/*' *.java JavaHelper/* ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java")

def run_framework(APK_Name, Main_Class):
    if os.getcwd().__contains__("Java"):
        APK_Location=''.join(["../../APK/",APK_Name,".apk"])
        Soot_output_Location=''.join(['../sootOutput/',APK_Name,'/'])
        # Soot_output_Location=../sootOutput/$1/
        # Main_Class=get_main_class_from_APK(APK_Name)
        os.chdir("Classes")
        os.system(' '.join(['java -cp .:../../Jar_Libs/* SootAnalysis', APK_Location, Soot_output_Location, Main_Class]))
        os.chdir('../')
    else:
        os.chdir("../Java")
        APK_Location=''.join(["../../APK/",APK_Name,".apk"])
        Soot_output_Location=''.join(['../sootOutput/',APK_Name,'/'])
        # Soot_output_Location=../sootOutput/$1/
        # Main_Class=get_main_class_from_APK(APK_Name)
        os.chdir("Classes")
        os.system(' '.join(['java -cp .:../../Jar_Libs/* SootAnalysis', APK_Location, Soot_output_Location, Main_Class]))
        os.chdir('../')

def get_main_class_from_APK(APK_Name):
    output=os.popen(''.join(['aapt dump badging ../APK/',APK_Name, '.apk | grep "launchable-activity"'])).read()
    output = str(output).split(" ")
    output = output[1].replace("name=", "").replace("'", "")
    return(output)

def get_package_from_APK(APK_Name):
    output=os.popen(''.join(['aapt dump badging ../APK/',APK_Name,'.apk | grep "package"'])).read().split(" ")
    output = output[1].replace("name=", "").replace("'", "")
    return(output)

def install_APK(APK_Name):
    directory = os.getcwd()
    if directory.__contains__("Python"):
        os.chdir("../Java/")
        os.system(''.join(['adb install sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))

def uninstall_APK(package):
    os.system(' '.join(['adb uninstall',package]))


def log_APK(APK_Name):
    os.system(''.join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',APK_Name,'.txt &']))
    time.sleep(13)
    os.system('pkill -f adb')
    os.system('adb logcat -c')
    with open(''.join(['../ADB_Logcat_Logs/',APK_Name,'.txt'])) as f:
        lines = f.readlines()

    for line in lines:
        if not line.__contains__('beginning'):
            print(line)

def clear_screen():
    os.system("clear")



clear_screen()
# app_categories_print()
#top_n_apps = get_top_n_number_of_apps('Games', 10)
#download_apk_links = get_download_links_from_apkpure(top_n_apps)
# print(download_apk_links)
# open_links_in_browser(download_apk_links)
# move_file_from_downloads('/home/seansanders/Downloads/')

# install_apps_from_apk_folder(['Angry_Birds_2_3.11.3_Apkpure.apk', 'Call_of_Dragons_1.0.14.69_Apkpure.apk', 
#     'Clash_of_Clans_15.83.29_Apkpure.apk', 'Roblox_2.568.524_Apkpure.apk', 'Subway_Surfers_3.10.0_Apkpure.xapk', 
#     'Toca_Life_World_Build_a_Story_1.63_Apkpure.apk', 'Whiteout_Survival_1.7.9_Apkpure.apk', 'Zooba_Fun_Battle_Royale_Games_4.7.2_Apkpure.apk'])

#------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------
#-------------------------------------INSTRUMENT APK FILES---------------------------------------------------
#------------------------------------------------------------------------------------------------------------
# compile_framework()
Main_Class = get_main_class_from_APK('TestApp3')
APK_Package = get_package_from_APK('TestApp3')
# run_framework('TestApp3', Main_Class)
# install_APK('TestApp3')
# clear_log()
# uninstall_APK(APK_Package)
log_APK("Test")