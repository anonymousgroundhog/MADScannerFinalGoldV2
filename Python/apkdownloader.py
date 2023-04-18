import urllib3, os, re, webbrowser, shutil, time, graphviz
from bs4 import BeautifulSoup
from google_play_scraper import app, Sort, reviews_all, reviews, search
from urllib.request import Request, urlopen, urlretrieve
from graphviz import Source

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
        os.system("javac -d Classes -cp '../Jar_Libs/*' *.java Conditions/*.java Soot/*.java Logging/Logging.java FileWriter/*.java FileParser/*.java FileHandler/*.java Constants/*.java ClassHelper/*.java Utils/*.java")
    else:
        os.chdir("../Java")
        os.system("javac -d Classes -cp '../Jar_Libs/*' *.java Conditions/*.java Soot/*.java Logging/Logging.java FileWriter/*.java FileParser/*.java FileHandler/*.java Constants/*.java ClassHelper/*.java Utils/*.java")

def run_framework(APK_Name, Main_Class):
    if os.getcwd().__contains__("Java"):
        APK_Location=''.join(["../../APK/",APK_Name,".apk"])
        Soot_output_Location=''.join(['../sootOutput/',APK_Name,'/'])
        # Soot_output_Location=../sootOutput/$1/
        # Main_Class=get_main_class_from_APK(APK_Name)
        os.chdir("Classes")
        cmd = ' '.join(['java -cp .:../../Jar_Libs/* SootAnalysis', APK_Location, Soot_output_Location, Main_Class])
        print(cmd)
        os.system(cmd)
        os.chdir('../')
    else:
        os.chdir("../Java")
        APK_Location=''.join(["../../APK/",APK_Name,".apk"])
        Soot_output_Location=''.join(['../sootOutput/',APK_Name,'/'])
        # Soot_output_Location=../sootOutput/$1/
        # Main_Class=get_main_class_from_APK(APK_Name)
        os.chdir("Classes")
        # cmd = ' '.join(['java -cp .:../../Jar_Libs/* SootAnalysis', APK_Location, Soot_output_Location, Main_Class])
        cmd = ' '.join(['java -cp .:../../Jar_Libs/* SootAnalysis', APK_Location, Soot_output_Location, Main_Class])
        # print(cmd)
        os.system(cmd)
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
    # with open(''.join(['../ADB_Logcat_Logs/',APK_Name,'.txt'])) as f:
    #     lines = f.readlines()

    # for line in lines:
    #     if not line.__contains__('beginning'):
    #         print(line)

def clear_screen():
    os.system("clear")

def zip_and_sign_APK_file(APK_Name):
    if os.getcwd().__contains__('Java'):
        os.system(''.join(['zipalign -fv 4 sootOutput/',APK_Name,'/',APK_Name,'.apk', ' sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))
        os.system(''.join(['apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password sootOutput/',APK_Name,'/signed',APK_Name,'.apk']))

def create_ngrams(lst, n):
    return [tuple(lst[i:i + n]) for i in range(len(lst) - n + 1)]

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
compile_framework()
Main_Class = get_main_class_from_APK('TestApp3')
APK_Package = get_package_from_APK('TestApp3')
run_framework('TestApp3', Main_Class)
# zip_and_sign_APK_file('TestApp3')
# install_APK('TestApp3')

# log_APK("Test")
# uninstall_APK(APK_Package)
#generate_model_from_log('Test')