import urllib3, os, re, webbrowser
from bs4 import BeautifulSoup
from google_play_scraper import app, Sort, reviews_all, reviews, search
from urllib.request import Request, urlopen, urlretrieve

def get_download_links_from_apkpure():
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

def move_file_from_downloads():
    os.chdir('../APK')
    print(os.listdir('/home/seansanders/Downloads/'))

move_file_from_downloads()