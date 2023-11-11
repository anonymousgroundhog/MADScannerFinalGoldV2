import multiprocessing, time, requests, hashlib, glob, Apps_Download
import urllib3, os, re, webbrowser, shutil, time, graphviz, subprocess, json, pandas as pd
from bs4 import BeautifulSoup
from requests_html import HTMLSession
from google_play_scraper import app, Sort, reviews_all, reviews, search
from urllib.request import Request, urlopen, urlretrieve
from graphviz import Source

def get_top_n_number_of_apps_from_each_category(num_apps_to_investigate):
    categories = ["Art and Design", "Auto and Vehicles", "Beauty", "Books and Reference", "Business", 
    "Comics", "Communications", "Dating", "Education", "Entertainment", "Events", "Finance", 
    "Food and Drink", "Games", "Health and Fitness", "House and Home", "Libraries and Demo", "Lifestyle", 
    "Maps and Navigation", "Medical", "Music and Audio", "News and Magazines", "Parenting", 
    "Personalization", "Photography", "Productivity", "Shopping", "Social", "Sports", "Tools", 
    "Travel and Local", "Video Players and Editors", "Weather"]
    list_to_return=[]
    for category in categories:
        results = search(
        str(category),
        lang="en",  # defaults to 'en'
        country="us",  # defaults to 'us'
        # sort=Sort.NEWEST,
        n_hits=num_apps_to_investigate  # defaults to 30 (= Google's maximum)
        )
        df = pd.DataFrame(results)
        list_to_return.append(df)
    merged_df = pd.concat(list_to_return, axis=0, ignore_index=True)
    return merged_df

def get_top_n_number_of_apps(category, num_apps_to_investigate):
    results = search(
    str(category),
    lang="en",  # defaults to 'en'
    country="us",  # defaults to 'us'
    # sort=Sort.NEWEST,
    n_hits=num_apps_to_investigate  # defaults to 30 (= Google's maximum)
    )
    return [result for result in results]

def remove_special_characters_from_apk_name():
    print("Removing Characters!!!")
    os.chdir('../APK')
    special_characters = "!@&#$%^&*()_+{}[]|\\;:\'<>?,./\""
    for item in os.listdir(os.getcwd()):
        if item.__contains__(".apk"):
            old_path = ''.join([os.getcwd(),"/",item])
            cleaned_string = ""
            for char in special_characters:
                cleaned_string = item.replace(char, "")
            cleaned_string = cleaned_string.replace("(","").replace(")","").replace("&","").replace("'","")
            new_path = ''.join([os.getcwd(),'/',cleaned_string])
            shutil.move(old_path, new_path)

def get_download_links_from_apkpure2(df):
    # div.first.brand.is-brand.sa-all-div.sa-apps-div.mb
    download_apk_links = []
    for index, row in df.iterrows():  
        link = None
        url = ''.join(['https://m.apkpure.com/',row['title'].lower().replace(" ", "-").replace('®',''),'/',row['appId'],'/download'])
        url = ''.join(['https://d.apkpure.com/b/APK/',row['appId'],'?version=latest'])
        download_apk_links.append(url)
    return download_apk_links

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
            download_apk_links.append(str(link['href']))
    return download_apk_links

def open_links_in_browser2(download_apk_links):
    try:
        for link in download_apk_links:
            print(link)
            webbrowser.open(link)
    except Exception as e:
        print("An error occurred:", str(e))

def open_links_in_browser(download_apk_links):
    try:
        for link in download_apk_links:
            print(link)
            last_item = link.split('/').pop().replace('?version=latest', '')
            print("last item:"+last_item)
            webbrowser.open(link)
            # os.system("start "+link)
    except Exception as e:
        print("An error occurred:", str(e))

def move_file_from_downloads(downloads_dir):
    if os.getcwd().__contains__("Python"):
        os.chdir('../APK')
        for item in os.listdir(downloads_dir):
            if item.__contains__(".apk"):
                old_path = ''.join([downloads_dir,item])
                new_path = ''.join([os.getcwd(),'/',old_path.replace(' ', '').replace("_","").split('/').pop()])
                # print(new_path)
                shutil.move(old_path, new_path)

# def app_categories_print():
#     categories = ["Art and Design", "Auto and Vehicles", "Beauty", "Books and Reference", "Business", 
#     "Comics", "Communications", "Dating", "Education", "Entertainment", "Events", "Finance", 
#     "Food and Drink", "Games", "Health and Fitness", "House and Home", "Libraries and Demo", "Lifestyle", 
#     "Maps and Navigation", "Medical", "Music and Audio", "News and Magazines", "Parenting", 
#     "Personalization", "Photography", "Productivity", "Shopping", "Social", "Sports", "Tools", 
#     "Travel and Local", "Video Players and Editors", "Weather"]
#     for category in categories:
#         print(category)

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

def get_main_class_from_APK(APK_Name):
    output=os.popen(''.join(['aapt dump badging ../APK/',APK_Name, '.apk | grep "launchable-activity"'])).read()
    output = str(output).split(" ")
    output = output[1].replace("name=", "").replace("'", "")
    return(output)

def get_package_from_APK(APK_Name):
    try:
        APK_Name = APK_Name.replace(".apk","")
        output=os.popen(''.join(['aapt dump badging ../APK/',APK_Name,'.apk | grep "package"'])).read().split(" ")
        if len(output) > 1:
            output = output[1].replace("name=", "").replace("'", "")
            return(output)
    except Exception as e:
        print("An error occurred:", str(e))

def install_APK(APK_Name):
    directory = os.getcwd()
    if directory.__contains__("Python"):
        os.chdir("../Java/")
        os.system(''.join(['adb install sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))
    elif directory.__contains__("Java"):
        # os.chdir("../Java/")
        os.system(''.join(['adb install sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))

def uninstall_APK(package):
    os.system(' '.join(['adb uninstall',package]))

def log_APK(APK_Name):
    os.system(''.join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',APK_Name,'.txt &']))
    time.sleep(13)
    os.system('pkill -f adb')
    os.system('adb logcat -c')

def clear_screen():
    os.system("clear")

# def zip_and_sign_APK_file(APK_Name):
#     if os.getcwd().__contains__('Java'):
#         os.system(''.join(['zipalign -fv 4 sootOutput/',APK_Name,'/',APK_Name,'.apk', ' sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))
#         os.system(''.join(['apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))

# def create_ngrams(lst, n):
#     return [tuple(lst[i:i + n]) for i in range(len(lst) - n + 1)]

def add_edge(graph, src_node, dest_node, edge_label=None):
    """
    Adds an edge to the given Graphviz graph.

    :param graph: The Graphviz graph object.
    :param src_node: The source node identifier.
    :param dest_node: The destination node identifier.
    :param edge_label: The label for the edge (optional).
    """
    graph.edge(src_node, dest_node, label=edge_label)

def generate_model_from_log(APK_Name):
    # print(APK_Name)
    
    # dot.edge('App_Start', 'App_Start_No_Ad_Displayed')
    

    methods=[]
    Ids=[]
    with open(''.join(['../ADB_Logcat_Logs/',APK_Name,'.txt'])) as f:
        lines = f.readlines()

    for line in lines:
        if not line.__contains__('beginning'):
            line_array = line.split('---')
            methods.append(line_array[3])
            Ids.append(line_array.pop().replace("\n",""))

    print(''.join(["Original list:",str(methods)]))
    app_state_id_list=['App_Start', 'App_Start_No_Ad_Displayed','App_Start_adView_Set', 'App_Running_Ad_Registered', 
    'App_Running_Ad_Loaded', 'App_Running_Ad_Displayed', 'App_Running_Ad_Impression', 'App_Start_Ad_Displayed']
    app_state_list = ['The app has started', 'The app has started with no Ads displayed', 
    'The app has started and an adView was set', 'The app is running and the advertisement is registe,red', 
    'The app is running and the advertisement is loaded', 'The app is running and the advertisement is displayed', 
    'The app is running and the advertisement impression is made', 'The app has started with Ads displayed']

    list_states = ['']
    dot = graphviz.Digraph('G',filename ="temp.gv")

    # Add nodes using the provided state lists
    for state_id, state_label in zip(app_state_id_list, app_state_list):
        dot.node(state_id, label=state_label)
    
    for ngram in create_ngrams(methods, 2):
        print(ngram)
        # check_and_create_edge(dot,ngram)
        if ngram[0].__contains__('onCreate') or (ngram[0].__contains__('onCreate') and ngram[1].__contains__('onCreate')):
            print("opt1")
            add_edge(dot, 'App_Start', 'App_Start', 'onCreate')
        if ngram[0].__contains__('onCreate') and ngram[1].__contains__('findViewById'):
            print("opt2")
            add_edge(dot, 'App_Start', 'App_Start_No_Ad_Displayed', 'findViewById')
        if ngram[0].__contains__('findViewById') and ngram[1].__contains__('findViewById'):
            print("opt3")
            add_edge(dot, 'App_Start_No_Ad_Displayed', 'App_Start_No_Ad_Displayed', 'findViewById')

    print(dot.source)
    dot.view()

def Generate_Dataframe_Details_For_APK_Files(df):
    apk_names = []
    packages = []
    for item in os.listdir("../APK/"):
                if item.__contains__(".apk"):
                    # print(item)
                    apk_names.append(item)
                    packages.append(get_package_from_APK(str(item)))
    data = {"APK_Name": apk_names, "Package": packages}
    df2 = pd.DataFrame(data)

    merged_df = pd.merge(df, df2, left_on="appId", right_on="Package")
    merged_df = merged_df.drop("Package", axis=1)
    return(merged_df)

def Part1():
    df = get_top_n_number_of_apps_from_each_category(10)
    links_download = get_download_links_from_apkpure2(df)
    df["download_url"] = links_download
    df["download_url"] = links_download
    df.to_csv("output.csv", index=False)
    p = multiprocessing.Process(target=open_links_in_browser, name="open_links_in_browser", args=(links_download,))
    p.start()
    time.sleep(110)
    p.terminate()
    p.join()

def Part2():
    df = pd.read_csv("output.csv")
    p = multiprocessing.Process(target=move_file_from_downloads, name="move_file_from_downloads", args=('/home/seansanders/Downloads/',))
    p.start()
    time.sleep(1)
    p.terminate()
    p.join()

    print("Moved Files")
    p = multiprocessing.Process(target=remove_special_characters_from_apk_name, name="remove_special_characters_from_apk_name", args=())
    p.start()
    time.sleep(1)
    p.terminate()
    p.join()
    print("Removed special characters")
    df_mapped = Generate_Dataframe_Details_For_APK_Files(df)
    print("MP1")
    df_mapped = df_mapped.dropna(axis=1, how="all")
    print("MP2")
    df_mapped.to_csv('data.csv', index = False)
    os.system("rm $HOME/Downloads/*.xapk")

def Part3():
    source_dir = os.getcwd()  # Get the current working directory
    destination_dir = os.path.join('..', 'Data')  # Destination directory path

    if not os.path.exists(destination_dir):
        os.makedirs(destination_dir)
        print(f"The folder '{destination_dir}' has been created.")

    csv_files = [file for file in os.listdir(source_dir) if file.endswith('.csv')]

    for file in csv_files:
        source_file = os.path.join(source_dir, file)
        destination_file = os.path.join(destination_dir, file)
        shutil.move(source_file, destination_file)
    txt_files = [file for file in os.listdir(source_dir) if file.endswith('.txt')]

    for file in txt_files:
        source_file = os.path.join(source_dir, file)
        destination_file = os.path.join(destination_dir, file)
        shutil.move(source_file, destination_file)

def calculate_sha256(file_path):
    sha256_hash = hashlib.sha256()
    with open(file_path, 'rb') as file:
        # Read the file in chunks to handle large files efficiently
        for chunk in iter(lambda: file.read(4096), b''):
            sha256_hash.update(chunk)
    return sha256_hash.hexdigest()

def Map_APK_Files_Package_To_Hash():
    df = pd.read_csv("../Data/data.csv")
    print(df) 
    apk_dir = os.path.join('..', 'APK')
    apk_files = [file for file in os.listdir(apk_dir) if file.endswith('.apk')]
    hashes = []
    for file in apk_files:
        path = ''.join([apk_dir,"/",file])
        hash_value = calculate_sha256(path)
        hashes.append(hash_value)
    data = {'APK_Name': apk_files, 'Hashes': hashes}
    df_hash = pd.DataFrame(data)
    merged_df = pd.merge(df, df_hash, on='APK_Name')
    print(merged_df)
    merged_df.to_csv("../Data/data_with_hash.csv", index=False)

def List_Installed_App_Packages():
    output=os.popen('adb shell pm list packages').read()
    output = str(output).replace("package:","").split("\n")
    output.pop()
    # output = output[1].replace("package:", "")
    return(output)

def Return_App_Packages_That_Were_Installed(app_packages,list_of_apps_installed):
    unique_packages = [x for x in app_packages if x not in list_of_apps_installed]
    return unique_packages

def Download_APK_To_File_System(package, pwd):
    print("Current Dir:"+ str(os.getcwd()))
    output=os.popen(' '.join(['adb shell pm path',package])).read()
    output = str(output).replace("package:","").split("\n")
    path_to_download_to=''.join(['../APK/Google_Play_Apps/',package,'/'])
    if not os.path.exists(path_to_download_to) and os.getcwd().__contains__(pwd):
        os.mkdir(path_to_download_to)
    
    for path in output:
        print(path)
        if os.path.exists(path_to_download_to):
            print("Path Exists for: " + path_to_download_to)
            os.popen(' '.join(['adb pull',path,path_to_download_to]))
        else:
            print("No path for: " + path_to_download_to)
    
def Get_Apps_Phase():
    pwd = os.getcwd()
    app_packages = List_Installed_App_Packages()
    # print(app_packages)
    # list_of_apps_installed = ['com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.fiogonia.dominoes', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore']
    list_of_apps_installed = ['com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore']
    unique_packages = Return_App_Packages_That_Were_Installed(app_packages,list_of_apps_installed)
    print(unique_packages)
    for package in unique_packages:
        if not package.__contains__("appium") and not package.__contains__("airdroid"):
            Download_APK_To_File_System(package, pwd)
            time.sleep(1)
            # package=package.replace(".","_")
            time.sleep(2)
            path_to_download_to=''.join(['../APK/Google_Play_Apps/',package,'/'])
            os.chdir(path_to_download_to)
            # cmd = ''.join(['mv ' , path_to_download_to+"/base.apk ",path_to_download_to+"/",package,'.apk'])
            # os.popen(cmd)
            print(str(os.listdir()))
            os.rename("base.apk", ''.join([package,'.apk']))
            # os.mkdir(path_to_download_to)
            # apkname=package.replace(".", "_")
            # if os.path.isfile('base.apk'):
            
            for file in os.listdir(os.getcwd()):
                if not file.__contains__("signed") and not file.__contains__("idsig"):
                    print("File:"+file)
                    cmd = ' '.join(["zipalign -fv 4", file, "signed"+file])
                    os.popen(cmd)
                    print("aligning!!!")
                    cmd = ' '.join(["apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password ", "signed"+file])
                    os.popen(cmd)
                    print("signing!!!")
                    file_to_copy="".join([package,".apk"])
                    destination="".join(["../",file_to_copy])
                    shutil.copyfile(file_to_copy, destination)
            # cmd = ''.join(['rm ,'.idsig'])
        print("PWD TEST:"+os.getcwd())
        # os.system("rm *.idsig")
        args = ('rm', '-rf', '*.idsig')
        subprocess.call('%s %s %s' % args, shell=True)
        os.chdir(pwd)
    # print("PWD TEST2:" +pwd + "\npath_to_download_to:"+path_to_download_to)
    print("COMPLETED")
    
def Cleanup_Folders():
    print("\n\nHello\n\n")
    pwd = os.getcwd()
    os.chdir('../APK/Google_Play_Apps/')
    # List all files and folders in the directory
    all_items = os.listdir(os.getcwd())
    # Filter out only folders
    folders = [item for item in all_items if os.path.isdir(os.path.join(os.getcwd(), item))]
    print(folders)
    for folder in folders:
        path=''.join([os.getcwd(), '/', folder])
        # cmd = ''.join(['rm ', path, '/*.idsig'])
        # os.popen(cmd)
        for f in glob.glob(path+"*.idsig"):
            os.remove(f)

clear_screen()
Get_Apps_Phase()
# Cleanup_Folders()
# Part1()
# Part2()
# Part3()
# Map_APK_Files_Package_To_Hash()
# df = get_top_n_number_of_apps_from_each_category(10)
# # print(df[['appId', 'title']])
# links_download = get_download_links_from_apkpure2(df)
# df['download_url'] = links_download
# # print(df)


# # apps_list = get_top_n_number_of_apps("Tools", 10)
# # df = pd.DataFrame(apps_list)

# links_download = get_download_links_from_apkpure(apps_list)
# df['download_url'] = links_download
# # print(df)

# p = multiprocessing.Process(target=open_links_in_browser, name="open_links_in_browser", args=(links_download,))
# p.start()
# time.sleep(110)
# p.terminate()
# p.join()

# p = multiprocessing.Process(target=move_file_from_downloads, name="move_file_from_downloads", args=('/home/seansanders/Downloads/',))
# p.start()
# time.sleep(5)
# p.terminate()
# p.join()

# p = multiprocessing.Process(target=remove_special_characters_from_apk_name, name="remove_special_characters_from_apk_name", args=())
# p.start()
# time.sleep(5)
# p.terminate()
# p.join()

# df_mapped = Generate_Dataframe_Details_For_APK_Files(df)
# df_mapped = df_mapped.dropna(axis=1, how='all')
# df_mapped.to_csv('output.csv', index=False)
# os.system('rm $HOME/Downloads/*.xapk')