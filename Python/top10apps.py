import webbrowser, apkdownloader, os
from bs4 import BeautifulSoup
import progressbar, requests, sys
from google_play_scraper import app, Sort, reviews_all, reviews, search

def get_apkpure_download_url(app_id):
    url = f"http://apkpure.com/store/apps/details?id={app_id}"
    response = requests.get(url)

    if response.status_code != 200:
        print(f"Error fetching the app page: {response.status_code}")
        return None

    soup = BeautifulSoup(response.text, 'html.parser')
    download_button = soup.find('a', {'id': 'download_link'})

    if not download_button:
        print("Download button not found")
        return None

    return download_button['href']

def search_app_id(app_name):
    search_url = f"http://m.apkpure.com/search?q={app_name.replace(' ', '+')}"
    print(search_url)
    headers = {'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36'}
    response = requests.get(search_url, headers=headers)
    # response = requests.get(search_url)

    if response.status_code != 200:
        print(f"Error fetching the search page: {response.status_code}")
        return None

    soup = BeautifulSoup(response.text, 'html.parser')
    search_result = soup.find('dl', {'class': 'search-dl'})

    if not search_result:
        print("No search results found")
        return None

    app_id = search_result['data-pkg']
    return app_id

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
    return [result['appId'] for result in results]

def open_app_in_browser(package_name):
    url = f"https://play.google.com/store/apps/details?id={package_name}"
    webbrowser.open(url)

def download_apk():
    apk = apkdownloader.apkdownloader(mail,password,locale,timezone)
    apk.download("package.name")


os.system('clear')
top_10_apps = get_top_10_apps('Games')
print("Latest Apps from Google Play Store:")

for idx, app_id in enumerate(top_10_apps, start=1):
    app_info = app(app_id)
    print(f"{idx}. {app_info['title']}")
    print(search_app_id(app_info['title']))
    # get_apkpure_download_url(app_info)
        # Uncomment the line below to open the app pages in your default web browser
    # open_app_in_browser(app_id)