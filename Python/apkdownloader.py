import multiprocessing, time, requests
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
        df['category'] = category
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
    special_characters = "!@&#$%^&*()_+{}[]|\;:'<>?,./\""
    for item in os.listdir(os.getcwd()):
        if item.__contains__(".apk"):
            old_path = ''.join([os.getcwd(),"/",item])
            cleaned_string = ""
            for char in special_characters:
                cleaned_string = item.replace(char, "")
            cleaned_string = cleaned_string.replace("(","").replace(")","").replace("&","")
            new_path = ''.join([os.getcwd(),'/',cleaned_string])
            # print(' '.join(['Old path:',old_path,'New path:',new_path]))
            shutil.move(old_path, new_path)

def get_download_links_from_apkpure2(list_of_apps):
    # div.first.brand.is-brand.sa-all-div.sa-apps-div.mb
    download_apk_links = []
    for index, row in df.iterrows():  
        link = None
        # print(' '.join([row['appId'], "(",row['title'], ")"]))
        # https://d.apkpure.com/b/APK/com.adsk.sketchbook?version=latest
        url = ''.join(['https://m.apkpure.com/',row['title'].lower().replace(" ", "-").replace('®',''),'/',row['appId'],'/download'])
        url = ''.join(['https://d.apkpure.com/b/APK/',row['appId'],'?version=latest'])
        download_apk_links.append(url)
        # # print(url)
        # req = requests.get(
        # url, 
        # params={'User-Agent': 'Mozilla/5.0'}
        # )
        # if req.status_code == 410:
        #     print("Error")
        #     download_apk_links.append("None")
        # else:
        #     webpage = req.text
        #     soup = BeautifulSoup(webpage, 'html.parser')
        #     # print(soup)
        #     link = soup.find('a', {'class', 'download-start-btn'})
        #     if link is not None: 
        #         print("LINK TO DOWNLOAD APK:"+str(link['href']))
        #         download_apk_links.append(str(link['href']))
        #         break
        #     else:
        #         link = get_link_from_version(url)
        #         if link is not None:
        #             download_apk_links.append(link)
        #         else:
        #             print("No Link Found!!!")
        #             download_apk_links.append('None')
    return download_apk_links

# def get_link_from_version(url):
#     url = url.replace("download",'versions')
#     print(''.join(["URL:",url]))
#     # create an HTML Session object
#     session = HTMLSession()
#     # Use the object above to connect to needed webpage
#     r = session.get(url)
#     link=r.html.find('body > div.versions-main.page-q > div.details-left > div.ver_content_box > ul > li:nth-child(1) > a', first=True)
#     # print(link.attrs['href'])
#     if link is not None:
#         link2 = link.attrs['href']
#         return link2
#         # # return(link2)
#         # r = session.get(link2)
#         # link=r.html.find('body > div.download-page.hide-content > main > div.bottom-download-wrap > div.fast-download-box.mobile > div > div > div.normal-btn > a', first=True)
#         # if link is not None:
#         #     return(link.attrs['href'])
#         # else:
#         #     return None
#     else:
#         return None
     
    

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

def Generate_Dataframe_Details_For_APK_Files(df):
    apk_names = []
    packages = []
    for item in os.listdir("../APK/"):
                if item.__contains__(".apk"):
                    apk_names.append(item)
                    packages.append(get_package_from_APK(str(item)))
    data = {'APK_Name': apk_names, 'Package': packages}
    df2 = pd.DataFrame(data)

    merged_df = pd.merge(df, df2, left_on='appId', right_on='Package')
    merged_df = merged_df.drop('Package', axis=1)
    return(merged_df)



clear_screen()
# url = 'https://apkpure.com/clip-studio-paint/jp.co.celsys.clipstudiopaint.googleplay/download'
# url = url.replace("download",'versions')
# print(''.join(["URL:",url]))
# # create an HTML Session object
# session = HTMLSession()

# # Use the object above to connect to needed webpage
# r = session.get(url)
 
# # Run JavaScript code on webpage
# link=r.html.find('body > div.versions-main.page-q > div.details-left > div.ver_content_box > ul > li:nth-child(1) > a', first=True)
# # print(link.attrs['href'])

# r = session.get(link.attrs['href'])
 
# # Run JavaScript code on webpage
# link=r.html.find('body > div.download-page.hide-content > main > div.bottom-download-wrap > div.fast-download-box.mobile > div > div > div.normal-btn > a', first=True)
# print(link.attrs['href'])

# df = get_top_n_number_of_apps_from_each_category(10)
# # print(df[['appId', 'title']])
# links_download = get_download_links_from_apkpure2(df)
# df['download_url'] = links_download
# print(df)


# apps_list = get_top_n_number_of_apps("Tools", 10)
# df = pd.DataFrame(apps_list)

# links_download = get_download_links_from_apkpure(apps_list)
# df['download_url'] = links_download
# print(df)

# p = multiprocessing.Process(target=open_links_in_browser, name="open_links_in_browser", args=(links_download,))
# p.start()
# time.sleep(110)
# p.terminate()
# p.join()

p = multiprocessing.Process(target=move_file_from_downloads, name="move_file_from_downloads", args=('/home/seansanders/Downloads/',))
p.start()
time.sleep(5)
p.terminate()
p.join()

p = multiprocessing.Process(target=remove_special_characters_from_apk_name, name="remove_special_characters_from_apk_name", args=())
p.start()
time.sleep(5)
p.terminate()
p.join()

# print(Generate_Dataframe_Details_For_APK_Files(df))
os.system('rm $HOME/Downloads/*.xapk')