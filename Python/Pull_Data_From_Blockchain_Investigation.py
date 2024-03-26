import os, nltk, pandas as pd, graphviz, numpy as np, time, StateMachine, Helper, Blockchain

from nltk import bigrams
from termcolor import colored, cprint
from web3 import Web3, EthereumTesterProvider

def Label_Dataframe_Rows(df):
    labels = []
    for index, row in df.iterrows():
        labels.append(row['App_Class'].split('.')[1])
    df['App_Label'] = labels
    return(df)

def Open_File_And_Generate_Dataframe(this_path):
    helper = Helper.Helper()
    print("\n"+this_path)
    app_name_list = []
    app_hash_list = []
    app_class_list = []
    app_method_list = []
    app_ad_id_list = []

    with open(this_path) as file:
        lines = [line.rstrip() for line in file]
        print("\n\nLines are: "+str(lines))
        while lines[0].__contains__("---------") and len(lines) > 1:
            del lines[0]
        # if lines[0].__contains__("---------"):
        #     del lines[0]
        # if lines[0].__contains__("---------"):
        #     del lines[0]
        # if lines[0].__contains__("---------"):
        #     del lines[0]
    for item in lines:
        content = item.split(":")
        content_to_manipulate=content.pop()
        content_to_manipulate_list = content_to_manipulate.split("---")
        print(content_to_manipulate_list) 
        if len(app_name_list) > 4:  
            app_name_list.append(content_to_manipulate_list[0])
            app_hash_list.append(content_to_manipulate_list[1])
            app_class_list.append(content_to_manipulate_list[2])
            app_method_list.append(content_to_manipulate_list[3])
            app_ad_id_list.append(content_to_manipulate_list[4])

    data = {
        'App_Name': app_name_list,
        'App_Hash': app_hash_list,
        'App_Class': app_class_list,
        'App_Method':app_method_list,
        'App_Ad_ID':app_ad_id_list
    }
    df = pd.DataFrame(data)
    
    # filtered_df = df.query( 'App_Method == ["onCreate", "setContentView", "setAdListener", "initialize", "findViewById", "loadAd", "onAdImpression", "onAdClicked", "onAdLoaded"]' )
    filtered_df = df.query( 'App_Method == ["setContentView", "setAdListener", "initialize", "onAdImpression", "onAdClicked", "onAdLoaded", "onAdClosed"]' )
    print(filtered_df)
    unique_apps=pd.unique(filtered_df[['App_Name']].values.ravel())

    for app_name in unique_apps:
        print("\nApp Name:" + app_name)
        rslt_df = filtered_df[filtered_df['App_Name'] == app_name]
        # print(rslt_df)
        transitions=rslt_df[['App_Method', 'App_Ad_ID']]
        
        transitions = transitions.loc[~((transitions['App_Ad_ID'] == 'null') & ((transitions['App_Method'] == 'onAdLoaded') | 
                                                                        (transitions['App_Method'] == 'onAdImpression')| 
                                                                        (transitions['App_Method'] == 'onAdClicked')))]
        
        transitions['Graph'] = np.nan
        transitions = transitions.reset_index(drop=True)
        set_setContentView = set(np.where(transitions.App_Method == 'setContentView')[0])
        set_setAdListener = set(np.where(transitions.App_Method == 'setAdListener')[0])
        set_initialize = set(np.where(transitions.App_Method == 'initialize')[0])

        counter1 = 0
        for loc in sorted(set_setContentView):
            counter1=counter1+1
            transitions.at[loc,'Graph'] = counter1
        
        set_empty = set(np.where(pd.isna(transitions['Graph']))[0])
        counter2 = 0
        for loc in sorted(set_empty):
            loc2=loc-1
            col_list = transitions["Graph"].values.tolist()
            # print('length:', transitions[transitions.columns[0]].count())
            if transitions[transitions.columns[0]].count() == 1:
                counter2 = counter2 + 1
                transitions.at[loc,'Graph'] = counter2
            elif col_list[loc2] != np.nan:
                # print("Prev Val ",col_list[loc2])
                transitions.at[loc,'Graph'] = col_list[loc2]
            else:
                # print("Prev Val ",col_list[loc2])
                counter2 = counter2 + 1
                transitions.at[loc,'Graph'] = counter2

        # Set states and add new graph for each
        print("Unique graph numbers:",transitions['Graph'].unique())
        for graph in transitions['Graph'].unique():
            print("Graph: ", graph)
            state_machine = StateMachine.StateMachine()
            state_machine.add_title("App Testing"+str(graph))
            state_machine.add_states()
            rslt_df = transitions[transitions['Graph'] == graph]
            this_transitions=list(helper.sliding_window_iter(rslt_df['App_Method'], 2))
            this_advertisement_id=list(helper.sliding_window_iter(rslt_df['App_Ad_ID'], 2))
            print(rslt_df)
            print(this_transitions)
            print(this_advertisement_id)
            for trans in this_transitions:
                print(trans[0], " ",trans[1])
                trans_determ = state_machine.determine_transition(trans)
                if(trans_determ != None):
                    print("Trans:"+str(trans_determ))
                    state_machine.add_dot_edge(trans_determ[0], trans_determ[1], trans_determ[2])
            print(state_machine.digraph)
            state_machine.save_as_pdf(this_path.replace(".txt","").split("/").pop()+"_"+app_name+"_"+str(graph))


os.system('clear')
blockchain = Blockchain.Blockchain()
blockchain.Connect()
blockchain.Set_Sender_Address('0x173c916A1fC0fC179e8E6da83319382053Bd458e')
blockchain.Set_Private_key('0x37fe626f8ee456c10975137fb9ba9ee0fce97e911a96d309b3a6801ff5ece7a3')
blockchain.Set_Contract_Address('0xc8c3bd66D8D29593FC4837E30eDBc5FEFBFF1989')
blockchain.Set_ABI('[ { "inputs": [ { "internalType": "string", "name": "Transition_1", "type": "string" }, { "internalType": "string", "name": "Transition_2", "type": "string" } ], "name": "Check_Transition", "outputs": [ { "internalType": "bool", "name": "", "type": "bool" } ], "stateMutability": "view", "type": "function" }, { "inputs": [], "name": "Setup_Model", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" }, { "internalType": "string", "name": "logClass", "type": "string" }, { "internalType": "string", "name": "logLibrary", "type": "string" }, { "internalType": "string", "name": "logMethod", "type": "string" }, { "internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "clearValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "getLogIds", "outputs": [ { "internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [ { "components": [ { "internalType": "address", "name": "sender", "type": "address" }, { "internalType": "string", "name": "log_class", "type": "string" }, { "internalType": "string", "name": "log_library", "type": "string" }, { "internalType": "string", "name": "log_method", "type": "string" }, { "internalType": "string", "name": "log_date_and_time", "type": "string" }, { "internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" } ]')

blockchain.Set_Contract_Instance()



helper = Helper.Helper()
this_apps = helper.unique(blockchain.Return_Available_Log_IDs())
lst_app_names = []
lst_app_classes = []
lst_app_libraries = []
lst_app_methods = []
lst_app_dates = []

for app in this_apps:
	all_blockchain_results = blockchain.Read_Data(app)
	for item in all_blockchain_results:
		app_library=item[1]
		app_class=item[2]
		app_method = item[3]
		app_date = item[4]
		block_timestamp = item[5]
		lst_app_names.append(app)
		if len(app_date) != '':
			lst_app_dates.append(app_date)
			lst_app_libraries.append(app_library)
			lst_app_classes.append(app_class)
			lst_app_methods.append(app_method)
		else:
			lst_app_dates.append('')
			lst_app_libraries.append('')
			lst_app_classes.append('')
			lst_app_methods.append('')

data = {
        'App_Name': lst_app_names,
        'App_Class': lst_app_classes,
        'App_Library': lst_app_libraries,
        'App_Method': lst_app_methods,
        'App_Date': lst_app_dates
    }
all_data_df = pd.DataFrame(data)
print(all_data_df[['App_Name', 'App_Library', 'App_Method']])

Apps_To_Investigate_List = ['com.hubx.imagination', 'com.aige.hipaint', 'com.PixelStudio', 'LinkedInJobsBusinessNews4.1.833.1Apkpure', 'ESPNFantasySports8.5.0Apkpure', 'CarGurusUsedNewCars2.77Apkpure', 'AlfredCameraHomeSecurityapp2023.10.1Apkpure', 'BooksyforCustomers2.10.2354Apkpure', 'AllEventsinCity-Discover10.1Apkpure', 'UltaBeautyMakeupSkincare8.2.1Apkpure', 'ParentLab–DailyParentingApp4.5.0Apkpure', 'AutoZone-AutoPartsRepair23.5.1Apkpure', 'CrossyRoad5.3.1Apkpure', 'VividSeatsEventTickets2023.58.0Apkpure', 'hooplaDigital4.69.2Apkpure1', 'Call_of_Dragons_1.0.14.69_Apkpure', 'ReadlyMagazinesNewspapers6.13.0Apkpure', 'Chick-fil-A®2023.8.2Apkpure', 'hooplaDigital4.69.2Apkpure', 'BumbleDatingFriendsapp5.324.0Apkpure', 'Subway®29.28.0Apkpure', 'BeautyPlus-Retouch,Filters7.6.034Apkpure', 'Винлаб—алкогольныенапитки4.5.6Apkpure', 'BabyDevelopmentParenting1.46Apkpure', 'ReadlyMagazinesNewspapers6.12.1Apkpure', 'AmazonMusicSongsPodcasts23.8.0Apkpure', 'AppClose-co-parentingapp3.1.1Apkpure', 'PlentyofFishDatingApp4.95.0.1513060Apkpure']

for app in Apps_To_Investigate_List:
    cprint('\n' + app, 'cyan')
    filtered_df = all_data_df[all_data_df['App_Name'] == app]
    filtered_df = filtered_df [filtered_df ['App_Library'].str.contains('google')]
    # print(filtered_df[['App_Method']])
    for item in list(bigrams(filtered_df['App_Method'].tolist())):
          t1 = item[0]
          t2 = item[1]
          if not t1.__contains__('zz') and not t2.__contains__('zz'):
              print(t1, ' ->', t2)
          # print(blockchain.Validate_Transitions(t1, t2))



# for app in this_apps:
# 	cprint('\n' + app, 'cyan')
# 	filtered_df = all_data_df[all_data_df['App_Name'] == app]
# 	filtered_df = filtered_df [filtered_df ['App_Library'].str.contains('google')]
# 	#print(filtered_df[['App_Method']])
# 	#print(list(bigrams(filtered_df['App_Method'].tolist())))
# 	for item in list(bigrams(filtered_df['App_Method'].tolist())):
# 		t1 = item[0]
# 		t2 = item[1]
# 		print(t1, ' ->', t2)
# 		print(blockchain.Validate_Transitions(t1, t2))

