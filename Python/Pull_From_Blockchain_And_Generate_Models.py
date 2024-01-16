import os, pandas as pd, graphviz, numpy as np, time, StateMachine, Helper, Blockchain

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
blockchain.Set_Sender_Address('0xb5753a314681e6e491B06251Ae622402d466775C')
blockchain.Set_Private_key('0x30875b364f647aa64e9d7ec26fad84655ffd922cf5ad0f553445d9aa6dfbe1c2')
blockchain.Set_Contract_Address('0x4Aa548B27DDe7aCe0ea5513F4145ddEe93314B0E')
blockchain.Set_ABI('[ { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" }, { "internalType": "string", "name": "logClass", "type": "string" }, { "internalType": "string", "name": "logLibrary", "type": "string" }, { "internalType": "string", "name": "logMethod", "type": "string" }, { "internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "getLogIds", "outputs": [ { "internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [ { "components": [ { "internalType": "address", "name": "sender", "type": "address" }, { "internalType": "string", "name": "log_class", "type": "string" }, { "internalType": "string", "name": "log_library", "type": "string" }, { "internalType": "string", "name": "log_method", "type": "string" }, { "internalType": "string", "name": "log_date_and_time", "type": "string" }, { "internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "uint256", "name": "", "type": "uint256" } ], "name": "log_ids", "outputs": [ { "internalType": "string", "name": "", "type": "string" } ], "stateMutability": "view", "type": "function" } ]')
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
#print(all_data_df[['App_Name', 'App_Library', 'App_Method']])

for app in this_apps:
	cprint(app, 'cyan')
	filtered_df = all_data_df[all_data_df['App_Name'] == app]
	filtered_df = filtered_df [filtered_df ['App_Library'] == 'google']
	print(filtered_df[['App_Name', 'App_Library', 'App_Method']])

