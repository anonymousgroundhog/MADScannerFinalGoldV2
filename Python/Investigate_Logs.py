import os, numpy as np, graphviz, more_itertools, pydot, pandas as pd
from termcolor import colored, cprint
from graphviz import Digraph

def Generate_Dataframe_From_Logs(this_path):
	app_name_list = []
	app_hash_list = []
	app_class_list = []
	app_method_list = []
	app_ad_id_list = []
	app_ad_date_list = []
	counter = 0
	trigger_del = False
	lines_to_del = []
	with open(this_path) as file:
		lines = [line.rstrip() for line in file]
		for line in lines:
			if line.__contains__('---------'):
				trigger_del = True
				lines_to_del.append(counter)

		counter=counter+1
		if trigger_del:
			for count in lines_to_del:
				del lines[count]
        # while lines[0].__contains__("---------") and len(lines) > 1:
        #     del lines[0]

	for item in lines:
		content = item.split(":")
		content_to_manipulate=content.pop()
		content_to_manipulate_list = content_to_manipulate.split("---")
		# print(content_to_manipulate_list) 
		if len(content_to_manipulate_list) > 4:
		    # print('Appending')  
			app_name_list.append(content_to_manipulate_list[0])
			app_hash_list.append(content_to_manipulate_list[1])
			app_class_list.append(content_to_manipulate_list[2])
			app_method_list.append(content_to_manipulate_list[3])
			app_ad_id_list.append(content_to_manipulate_list[4])
			app_ad_date_list.append(this_path.split('/').pop().replace(".txt", ""))

	data = {
		'App_Name': app_name_list,
		'App_Hash': app_hash_list,
		'App_Class': app_class_list,
		'App_Method':app_method_list,
		'App_Ad_ID':app_ad_id_list,
		'App_Date':app_ad_date_list
	}
	df = pd.DataFrame(data)
	return df

this_path='../Data/Logs/'

os.system('clear')

big_df = pd.DataFrame(columns=['App_Name','App_Hash', 'App_Class', 'App_Method', 'App_Ad_ID', 'App_Date'])
for file in os.listdir(this_path):
	if file.__contains__(".txt"):
		full_path = ''.join([this_path,'/',file])
		print(file)
		# print(Generate_Dataframe_From_Logs(full_path))
		big_df = pd.concat([big_df, Generate_Dataframe_From_Logs(full_path)], axis=0)
print(big_df)

unique_apps = big_df['App_Name'].unique()
print(unique_apps)
print(len(unique_apps))