import requests, csv, os, pandas as pd
from bs4 import BeautifulSoup

def list_directories(path, directories_to_exclude):
    return [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d)) and d not in directories_to_exclude]

def Get_Content_Using_BeautifulSoup(url):
	response = requests.get(url)
	soup = BeautifulSoup(response.text, 'html.parser')
	headers = soup.find_all('h1')
	app_title=""
	app_details=[]
	categories=[]
	for header in headers:
		app_title=header.get_text().strip()

	elements = soup.find_all(class_='UIuSk')
	for element in elements:
		app_details.append(element.get_text().strip())
	
	hrefs = soup.find_all('a')
	for href in hrefs:
		if 'category' in str(href):
			categories.append(str(href.get("href")).split('/').pop())
			# print(str(href.get("href")).split('/').pop())

	# print(soup.find('a'))
	return url, app_title, ', '.join(app_details), ', '.join(categories)

base_url='https://play.google.com/store/apps/details?id='

directories_list = list_directories('../APK/Google_Play_Apps', ['BannerRecyclerViewExample', 'TestClassAdViewAdListener'])

os.system('clear')


columns = ['Package Name', 'App Name', 'URL', 'Category']
df = pd.DataFrame(columns=columns)
for this_dir in directories_list:
	full_url=''.join([base_url,this_dir])
	print(full_url)
	# print()
	url_content = Get_Content_Using_BeautifulSoup(full_url)
	row2 = {
	    "Package Name": this_dir,
	    "App Name": url_content[1],
	    "URL": url_content[0],
	    "Category": url_content[3],
	}
	df= df.append(row2, ignore_index=True)

	df.to_csv('../Data/App_Category_Details.csv',index=False)
print(df)