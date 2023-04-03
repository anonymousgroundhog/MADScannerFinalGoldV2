import urllib3, os, re
from bs4 import BeautifulSoup
from google_play_scraper import app, Sort, reviews_all, reviews, search
from urllib.request import Request, urlopen

def open_app_in_browser(package_name):
    url = f"https://play.google.com/store/apps/details?id={package_name}"
    webbrowser.open(url)

def get_top_10_apps(category):
    # results = search('Games', num_results=10, sort=Sort.NEWEST)
    results = search(
    str(category),
    lang="en",  # defaults to 'en'
    country="us",  # defaults to 'us'
    # sort=Sort.NEWEST,
    n_hits=10  # defaults to 30 (= Google's maximum)
)
    # print(results)
    return [result for result in results]

def get_apk_url(package_name): 
    opener = urllib3.PoolManager()
    headers = {
        'authority': 'scrapeme.live',
        'dnt': '1',
        'upgrade-insecure-requests': '1',
        'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',
        'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
        'sec-fetch-site': 'none',
        'sec-fetch-mode': 'navigate',
        'sec-fetch-user': '?1',
        'sec-fetch-dest': 'document',
        'accept-language': 'en-GB,en-US;q=0.9,en;q=0.8',
    }
    response = opener.request('GET', 'http://apk-dl.com/' + package_name, headers=headers)
    print(response.status)
    # print(response.data)
    soup = BeautifulSoup(response.data, 'html.parser')
    temp_link = soup.find("div",{'class': 'download-btn'}).find("a")["href"]

    response = opener.request('GET', 'http://apk-dl.com/' + temp_link, headers=headers)
    soup = BeautifulSoup(response.data, 'html.parser')
    temp_link2 = soup.find("section",{'class': 'detail'}).find("a")["href"]

    print(temp_link2)
    response = opener.request('GET', temp_link2, headers=headers)
    soup = BeautifulSoup(response.data, 'html.parser')
    print(soup)
    temp_link3 = soup.find("div",{'class': 'contents'}).find("a")["href"]

    return "http:" + temp_link3

#print(get_apk_url('com.facebook.katana'))

#print(get_apk_url("com.foxxymobile.singletapgames"))


os.system('clear')
opener = urllib3.PoolManager()
headers = {
    'authority': 'scrapeme.live',
    'dnt': '1',
    'upgrade-insecure-requests': '1',
    'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',
    'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
    'sec-fetch-site': 'none',
    'sec-fetch-mode': 'navigate',
    'sec-fetch-user': '?1',
    'sec-fetch-dest': 'document',
    'accept-language': 'en-GB,en-US;q=0.9,en;q=0.8',
}

list_of_apps = get_top_10_apps('games')
# print(list_of_apps[0])
# req = Request(
# url='https://m.apkpure.com/search?q='+list_of_apps[0], 
# headers={'User-Agent': 'Mozilla/5.0'}
# )
# webpage = urlopen(req).read()
# soup = BeautifulSoup(webpage, 'html.parser')
# div = soup.find("div", {"class", "first first-apk sa-all-div sa-apps-div mb"})
# print(div.find('div', {"class", "button"}))



# div.first.brand.is-brand.sa-all-div.sa-apps-div.mb
for apk in list_of_apps:
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
	print("LINK TO DOWNLOAD APK:"+str(link))