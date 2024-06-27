import os, pandas as pd

from google_play_scraper import app

def Get_Google_Play_App_Details(app_package):

	result = app(
	    app_package,
	    lang='en', # defaults to 'en'
	    country='us' # defaults to 'us'
	)
	return result

df = pd.read_csv('../Data/Application Analysis Gold - Working_On_Data_Interpreting.csv')
print(df)
lst_title = []
lst_genre = []
for package in df['Package']:
	print(package)
	try:
		data = Get_Google_Play_App_Details(package)
		title = data['title']
		# print(title)
		lst_title.append(title)
		lst_genre.append(data['genre'])
	except:
		# print('None')
		lst_title.append('None')
		lst_genre.append('None')
df['title'] = lst_title
df['genre'] = lst_genre
print(df)