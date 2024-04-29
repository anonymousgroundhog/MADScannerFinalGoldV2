import os, pandas as pd, graphviz, numpy as np, time, StateMachine, Helper, Blockchain
from web3 import Web3, EthereumTesterProvider
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
blockchain.Set_Sender_Address('0xF9A21e02Ca12CC32eE2EF3014bf1215672338151')
blockchain.Set_Private_key('0x60281226da2a84254cb0c602cdb3f349c3e300f60bc0e3fa39f630a7cec4205b')
blockchain.Set_Contract_Address('0xD990B464baEf802204eddfE351762C55a35B520c')
blockchain.Set_ABI('[ { "inputs": [ { "internalType": "string", "name": "Transition_1", "type": "string" }, { "internalType": "string", "name": "Transition_2", "type": "string" } ], "name": "Check_Transition", "outputs": [ { "internalType": "bool", "name": "", "type": "bool" } ], "stateMutability": "view", "type": "function" }, { "inputs": [], "name": "Setup_Model", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" }, { "internalType": "string", "name": "logClass", "type": "string" }, { "internalType": "string", "name": "logLibrary", "type": "string" }, { "internalType": "string", "name": "logMethod", "type": "string" }, { "internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "clearValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "getLogIds", "outputs": [ { "internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [ { "components": [ { "internalType": "address", "name": "sender", "type": "address" }, { "internalType": "string", "name": "log_class", "type": "string" }, { "internalType": "string", "name": "log_library", "type": "string" }, { "internalType": "string", "name": "log_method", "type": "string" }, { "internalType": "string", "name": "log_date_and_time", "type": "string" }, { "internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" } ]')

blockchain.Set_Contract_Instance()
blockchain.Setup_Model()

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
print(all_data_df)
for index,row in all_data_df.drop_duplicates(keep='first').iterrows():
     app_name = row['App_Name'].replace(' ', '')
     app_class = row['App_Class'].replace(' ', '')
     app_library = app_class.split(".")
     app_library = app_library[1]
     app_method = row['App_Method'].replace(' ', '')
     app_date = row['App_Date'].replace(' ', '')
     blockchain.Add_Data(app_name, app_class, app_library, app_method, app_date)

# all_blockchain_results = blockchain.Read_Data('WEBTOON2.12.10Apkpure')
# for item in all_blockchain_results:
#     app_name=item[1]
#     app_class=item[2]
#     app_method = item[3]
#     app_date = item[4]
#     block_timestamp = item[5]
#     print(app_date, ' ', app_name, ' ', app_class, ' ', app_method)

# helper = Helper.Helper()
# helper.unique(blockchain.Return_Available_Log_IDs())
