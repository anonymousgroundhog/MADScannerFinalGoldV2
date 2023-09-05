import os, pandas as pd
from functools import reduce


def unique(list1):
 
    # Print directly by using * symbol
    ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
    print(ans)

df = ""
def Open_File_And_Generate_Dataframe(this_path):
    print(this_path)
    app_name_list = []
    app_hash_list = []
    app_class_list = []
    app_method_list = []
    app_ad_id_list = []

    with open(this_path) as file:
        lines = [line.rstrip() for line in file]
        del lines[0]
        del lines[0]
    for item in lines:
        content = item.split(":")
        content_to_manipulate=content.pop()
        content_to_manipulate_list = content_to_manipulate.split("---")
        app_name_list.append(content_to_manipulate_list[0])
        app_hash_list.append(content_to_manipulate_list[1])
        app_class_list.append(content_to_manipulate_list[2])
        app_method_list.append(content_to_manipulate_list[3])
        app_ad_id_list.append(content_to_manipulate_list[4])
        # print(content_to_manipulate)
    # print(app_name_list)
    data = {
        'App_Name': app_name_list,
        'App_Hash': app_hash_list,
        'App_Class': app_class_list,
        'App_Method':app_method_list,
        'App_Ad_ID':app_ad_id_list
    }
    df = pd.DataFrame(data)
    
    # filtered_df = df.query( 'App_Method == ["onCreate", "setContentView", "setAdListener", "initialize", "findViewById", "loadAd", "onAdImpression", "onAdClicked", "onAdLoaded"]' )
    filtered_df = df.query( 'App_Method == ["setContentView", "setAdListener", "initialize", "findViewById", "loadAd", "onAdImpression", "onAdClicked", "onAdLoaded"]' )

    unique_apps=pd.unique(filtered_df[['App_Name']].values.ravel())
    # print(unique_apps)
    print("\n\n")
    for app_name in unique_apps:
        print("\nApp Name:" + app_name)
        rslt_df = filtered_df[filtered_df['App_Name'] == app_name]
        transitions=rslt_df[['App_Method', 'App_Ad_ID']]
        
        df = transitions.loc[~((transitions['App_Ad_ID'] == 'null') & ((transitions['App_Method'] == 'onAdLoaded') | 
                                                                        (transitions['App_Method'] == 'onAdImpression')| 
                                                                        (transitions['App_Method'] == 'onAdClicked')))]
        print(df)
        # for index, row in transitions.iterrows():
        #     print(row['App_Method'], row['App_Ad_ID'])
        # print(transitions)
        # df1 = transitions.drop_duplicates(keep='first')
        # print(rslt_df) 
        # print(df1)

for file in os.listdir("../Data/Logs"):
    path="".join(["../Data/Logs/",file])
    Open_File_And_Generate_Dataframe(path)