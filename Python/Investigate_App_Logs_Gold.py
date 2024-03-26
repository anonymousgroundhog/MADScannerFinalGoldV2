import os, pandas as pd, graphviz, numpy as np, time, StateMachine, Helper, Blockchain
from web3 import Web3, EthereumTesterProvider

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

all_data_df = pd.DataFrame(data)
for file in os.listdir(logs_dir):
    path="".join([logs_dir,file])
    if os.path.getsize(path) != 0:
        # Open_File_And_Generate_Dataframe(path)
        df = Generate_Dataframe_From_Logs(path)
        df = Label_Dataframe_Rows(df)
        all_data_df = pd.concat([all_data_df, df])
    else:
        print("Empty File!!!")

# print(all_data_df)

filtered_df = all_data_df.query( 'App_Label == "google"' )
unique_apps_google=pd.unique(filtered_df[['App_Name']].values.ravel())
# print(unique_apps_google)

filtered_df = all_data_df.query( 'App_Label == "facebook"' )
unique_apps_facebook=pd.unique(filtered_df[['App_Name']].values.ravel())
print(unique_apps_facebook)


# filtered_df = all_data_df[all_data_df['App_Label'].str.contains('google|facebook', case=False)]
# unique_apps_facebook_and_google = pd.unique(filtered_df[['App_Name']].values.ravel())
# # print(unique_apps_facebook_and_google)

# # print(unique_apps_facebook)

# filtered_df = all_data_df[all_data_df['App_Label'].str.contains('google', case=False) & ~all_data_df['App_Label'].str.contains('facebook', case=False)]
# unique_apps_google_only = pd.unique(filtered_df[['App_Name']].values.ravel())
# # print(unique_apps_google_only)

# filtered_df = all_data_df[all_data_df['App_Label'].str.contains('facebook', case=False) & ~all_data_df['App_Label'].str.contains('google', case=False)]
# unique_apps_facebook_only = pd.unique(filtered_df[['App_Name']].values.ravel())
# print(unique_apps_facebook_only)


# filtered_df = all_data_df.query( 'App_Label == "facebook" and App_Label != "google"' )
# unique_apps_facebook=pd.unique(filtered_df[['App_Name']].values.ravel())

# filtered_df = all_data_df.query( 'App_Label == "google" and App_Label != "facebook"' )
# unique_apps_google=pd.unique(filtered_df[['App_Name']].values.ravel())
# print(unique_apps_google)

# filtered_df = df[(df.str.contains("google") == True) & (df.str.contains("facebook") == False)]
# unique_apps_google_only = pd.unique(filtered_df[['App_Name']].values.ravel())
# print((df.str.contains("google") == True))