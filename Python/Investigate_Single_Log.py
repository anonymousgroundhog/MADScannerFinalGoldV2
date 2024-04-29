import os, pandas as pd, graphviz, numpy as np, time, StateMachine, Helper, numpy
# from web3 import Web3, EthereumTesterProvider
from termcolor import colored, cprint

def Label_Dataframe_Rows(df):
    labels = []
    for index, row in df.iterrows():
        labels.append(row['App_Class'].split('.')[1])
    df['App_Label'] = labels
    return(df)

def Generate_Dataframe_From_Logs(this_path):
    app_name_list = []
    app_hash_list = []
    app_class_list = []
    app_method_list = []
    app_ad_id_list = []
    app_ad_date_list = []

    with open(this_path) as file:
        lines = [line.rstrip() for line in file]
        # print("\n\nLines are: "+str(lines))
        while lines[0].__contains__("---------") and len(lines) > 1:
            del lines[0]

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


os.system('clear')
logs_dir = '../Data/Logs/'

data = {
    'App_Name': [],
    # 'App_Hash': [],
    'App_Class': [],
    'App_Method':[],
    'App_Ad_ID':[],
    'App_Date':[]
}

search_pattern = '04-09'
all_data_df = pd.DataFrame(data)
for file in os.listdir(logs_dir):
	if search_pattern in file:
	    path="".join([logs_dir,file])
	    if os.path.getsize(path) != 0:
	        # Open_File_And_Generate_Dataframe(path)
	        df = Generate_Dataframe_From_Logs(path)
	        df = Label_Dataframe_Rows(df)
	        all_data_df = pd.concat([all_data_df, df])
	    else:
	        print("Empty File!!!")

cprint(''.join(['Number of apps: ',str(len(numpy.unique(all_data_df['App_Name'])))]), 'green')

filtered_df = all_data_df.query( 'App_Label == "google"' )
unique_apps_google=pd.unique(filtered_df[['App_Name']].values.ravel())
# print(unique_apps_google)

filtered_df = all_data_df.query( 'App_Label == "facebook"' )
unique_apps_facebook=pd.unique(filtered_df[['App_Name']].values.ravel())
# print(unique_apps_facebook)

contains_only_google_ads_counter = 0
for app_hash in unique_apps_google:
    cprint(app_hash, 'green')
    if app_hash not in unique_apps_facebook:
        cprint('\tContains only google ads!!!', 'yellow')
        contains_only_google_ads_counter=contains_only_google_ads_counter+1

cprint(' '.join(['There are only', str(contains_only_google_ads_counter), 'apps that contains only google ads']), 'cyan')