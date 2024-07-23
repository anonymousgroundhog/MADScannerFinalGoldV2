import requests, csv, os, pandas as pd, hashlib, Helper
from bs4 import BeautifulSoup

class Get_App_Names:
	def __init__(self):
		self.base_url = 'https://play.google.com/store/apps/details?id=';
		self.directories_list = []
		self.testing_directory = 'Google_Play_Apps'

	def Set_Testing_Directory(self, this_dir):
		self.testing_directory = this_dir

	def Set_Directories_To_Ignore(self, directories):
		self.directories_list = directories

	def Get_File_SHA256(self, file_path):
	    """Compute SHA256 hash of a file."""
	    hash_sha256 = hashlib.sha256()
	    with open(file_path, 'rb') as file:
	        # Read and update hash in chunks of 4K
	        for chunk in iter(lambda: file.read(4096), b""):
	            hash_sha256.update(chunk)
	    return hash_sha256.hexdigest()

	def List_Directories(self, path, directories_to_exclude):
	    return [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d)) and d not in directories_to_exclude]

	def Get_Content_Using_BeautifulSoup(self, url):
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

		contains_ads="No"
		for lines in soup.find_all(class_='UIuSk'):
			data=lines.get_text()
			if 'Contains ads' in data:
				# print(data)
				contains_ads="Yes"

		package_name=url.split('=').pop()
		sha256=self.Get_File_SHA256(''.join(['../APK/',self.testing_directory, '/',package_name,'/',package_name,'.apk']))
		return url, app_title, ', '.join(app_details), ', '.join(categories), sha256, contains_ads

	def Get_Content_Using_BeautifulSoup2(self, url, app_name):
		helper = Helper.Helper()
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

		contains_ads="No"
		for lines in soup.find_all(class_='UIuSk'):
			data=lines.get_text()
			if 'Contains ads' in data:
				print(data)
				contains_ads="Yes"

		package_name=url.split('=').pop()
		sha256=self.Get_File_SHA256(''.join(['../APK/',self.testing_directory, '/',app_name]))
		return url, app_title, ', '.join(app_details), ', '.join(helper.unique(categories)), sha256, contains_ads

	def Return_DataFrame_Data(self):
		directories_list = self.List_Directories(''.join(['../APK/',self.testing_directory]), self.directories_list)
		columns = ['Package Name', 'App_Name', 'URL', 'Category', 'SHA256', 'Has Ads']
		df = pd.DataFrame(columns=columns)
		for this_dir in directories_list:
			full_url=''.join([self.base_url,this_dir])
			print(full_url)
			# print()
			url_content = self.Get_Content_Using_BeautifulSoup(full_url)
			row = {
			    "Package Name": this_dir,
			    "App Name": url_content[1],
			    "URL": url_content[0],
			    "Category": url_content[3],
			    "SHA256": url_content[4],
			    "Has Ads": url_content[5],
			}
			df = pd.concat([df, pd.DataFrame.from_records([row])])
			df.to_csv('../Data/App_Category_Details.csv',index=False)
		return df