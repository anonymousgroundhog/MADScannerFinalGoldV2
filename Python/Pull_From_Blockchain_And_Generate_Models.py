import os, nltk, pandas as pd, graphviz, numpy as np, time, StateMachine, Helper, Blockchain, more_itertools, img2pdf
from PIL import Image
from nltk import bigrams
from termcolor import colored, cprint
from web3 import Web3, EthereumTesterProvider
from graphviz import Digraph

def Convert_PNG_To_PDF(file):
    image = Image.open(file)
 
    # converting into chunks using img2pdf
    pdf_bytes = img2pdf.convert(image.filename)
     
    # opening or creating pdf file
    file = open(file.replace('.png', '.pdf'), "wb")
     
    # writing pdf files with chunks
    file.write(pdf_bytes)
     
    # closing image file
    image.close()
     
    # closing pdf file
    file.close()
     
    # # output
    # print("Successfully made pdf file")
def Return_Lines_From_File(this_path):
    # path = 'App_Transitions2.txt'
    if os.path.exists(this_path):
        with open(this_path, "r") as file:
            return(file.readlines())
    else:
        return('')

def Return_States_Based_On_Transitions(this_transition_list):
    lst_states=[]
    if len(this_transition_list) > 0:
        for idx,transition in enumerate(this_transition_list):
            transition=str(transition).replace(' ', '').split('->')
            if(transition[0] == 'attachInfo' and transition[1] == 'attachInfo') or (transition[0] == 'attachInfo' and transition[1] == 'build'):
                lst_states.append('appstarted')
            if (transition[0] == 'attachInfo' and transition[1] == 'build') or (transition[0] == 'build' and transition[1] == 'build'):
                lst_states.append('appstarted_adview_set')
            if (transition[0] == 'build' and transition[1] == 'initialize') or (transition[0] == 'initialize' and transition[1] == 'initialize'):
                lst_states.append('appstarted_no_ads')
            if (transition[0] == 'initialize' and transition[1] == 'onAdLoaded') or (transition[0] == 'onAdLoaded' and transition[1] == 'onAdLoaded'):
                lst_states.append('apprunning_ad_loaded')
            if (transition[0] == 'onAdLoaded' and transition[1] == 'onResume') or (transition[0] == 'onResume' and transition[1] == 'onResume'):
                lst_states.append('apprunning_ad_impression')
            if (transition[0] == 'onResume' and transition[1] == 'onPause') or (transition[0] == 'onPause' and transition[1] == 'onPause'):
                lst_states.append('apprunning_ad_engagement')
            if (transition[0] == 'onAdLoaded' and transition[1] == 'onAdImpression'):
                lst_states.append('The app has started with Ads displayed')
        return lst_states

def Generate_Model_From_List(this_model_name, this_list_of_states):
    digraph = Digraph('G', engine='neato', comment=this_model_name, format='png')
    digraph.node('appstarted', 'The app has started', pos='0,5!')
    digraph.node('appstarted_adview_set', 'The app has started and an adView was set', pos='0,4!')
    digraph.node('appstarted_no_ads', 'The app has started with no Ads displayed', pos='0,3!')
    digraph.node('apprunning_ad_loaded', 'The app is running and the advertisement is loaded', pos='0,2!')
    digraph.node('appstarted_with_ads', 'The app has started with ads displayed', pos='0,1!')
    digraph.node('apprunning_ad_impression', 'The app is running and the advertisement impression is made', pos='10,0!')
    digraph.node('apprunning_ad_engagement', 'The app is running and the advertisement engagement is made', pos='10,2!')
    digraph.attr(label=this_model_name)
    # print()
    for states in list(more_itertools.windowed(this_list_of_states,2)):
        print(states)
        if states[1] == None:
            digraph.edge(states[0], states[0], constraint='false')
        else:
            digraph.edge(states[0], states[1], constraint='false')
    digraph.render('FSM_Models/'+this_model_name)

def Return_DF_And_Apps_From_Blockchain_Data(this_sender_address, this_private_key, this_contract_address):
    blockchain = Blockchain.Blockchain()
    blockchain.Connect()
    # blockchain.Set_Sender_Address('0xdE2ED5049eb256D14d5F88b77bc041C77daf0702')
    # blockchain.Set_Private_key('0xf189036b58739d7b93eb7a2404e609aa1a483f7aaa034b04cfa697bf6133c2f7')
    # blockchain.Set_Contract_Address('0x6eC04225C7ca6b4F1B0552ED72835e8722ec491b')
    blockchain.Set_Sender_Address(this_sender_address)
    blockchain.Set_Private_key(this_private_key)
    blockchain.Set_Contract_Address(this_contract_address)
    # blockchain.Set_ABI('[ { "inputs": [ { "internalType": "string", "name": "Transition_1", "type": "string" }, { "internalType": "string", "name": "Transition_2", "type": "string" } ], "name": "Check_Transition", "outputs": [ { "internalType": "bool", "name": "", "type": "bool" } ], "stateMutability": "view", "type": "function" }, { "inputs": [], "name": "Setup_Model", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" }, { "internalType": "string", "name": "logClass", "type": "string" }, { "internalType": "string", "name": "logLibrary", "type": "string" }, { "internalType": "string", "name": "logMethod", "type": "string" }, { "internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "clearValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [], "name": "getLogIds", "outputs": [ { "internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [ { "components": [ { "internalType": "address", "name": "sender", "type": "address" }, { "internalType": "string", "name": "log_class", "type": "string" }, { "internalType": "string", "name": "log_library", "type": "string" }, { "internalType": "string", "name": "log_method", "type": "string" }, { "internalType": "string", "name": "log_date_and_time", "type": "string" }, { "internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" } ]')
    blockchain.Set_ABI('[{"inputs": [{"internalType": "string", "name": "appId", "type": "string" }, {"internalType": "string", "name": "logClass", "type": "string" }, {"internalType": "string", "name": "logLibrary", "type": "string" }, {"internalType": "string", "name": "logMethod", "type": "string" }, {"internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [{"internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [{"internalType": "string", "name": "this_transition", "type": "string" } ], "name": "addValidTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [], "name": "clearValidModelTransitions", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [], "name": "Setup_Model", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [{"internalType": "string", "name": "Transition_1", "type": "string" }, {"internalType": "string", "name": "Transition_2", "type": "string" } ], "name": "Check_Transition", "outputs": [{"internalType": "bool", "name": "", "type": "bool" } ], "stateMutability": "view", "type": "function" }, {"inputs": [], "name": "getLogIds", "outputs": [{"internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [{"components": [{"internalType": "address", "name": "sender", "type": "address" }, {"internalType": "string", "name": "log_class", "type": "string" }, {"internalType": "string", "name": "log_library", "type": "string" }, {"internalType": "string", "name": "log_method", "type": "string" }, {"internalType": "string", "name": "log_date_and_time", "type": "string" }, {"internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" } ]')
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
    all_data_df = all_data_df.dropna()
    # print(all_data_df[['App_Name', 'App_Library', 'App_Method']])
    return (all_data_df, this_apps, blockchain)

def Generate_Log_File_For_App_Names_And_Transitions(all_data_df, this_apps, blockchain):
    pwd=os.getcwd()
    os.chdir('../Data/')
    if os.path.exists('App_Transitions2.txt'):
        os.remove('App_Transitions2.txt')

    with open("App_Transitions2.txt", "a") as file:
        for app in this_apps:
            cprint('\n' + app, 'cyan')
            file.write(app+'\n')
            filtered_df = all_data_df[all_data_df['App_Name'] == app]
            filtered_df = filtered_df [filtered_df ['App_Library'].str.contains('google')]
            #print(filtered_df[['App_Method']])
            #print(list(bigrams(filtered_df['App_Method'].tolist())))
            for item in list(bigrams(filtered_df['App_Method'].tolist())):
                t1 = item[0]
                t2 = item[1]
                if blockchain.Validate_Transitions(t1, t2):
                    print(t1, ' ->', t2)
                    file.write(t1 + ' ->' + t2+'\n')
    os.chdir(pwd)

def Cleanup_File_App_Transitions():
    pwd=os.getcwd()
    os.chdir('../Data/')
    lst_app_data=[]
    
    path = 'App_Transitions2.txt'
    lines=Return_Lines_From_File(path)
    method_counter=0
    this_app=''
    dict_apps={}

    for line in lines:
        # print(line)
        if not line.__contains__("->"):
            # print(line)
            this_app=line.strip()
            method_counter=0

        if line.__contains__("->"):
            method_counter=method_counter+1
            # print(line, " ", method_counter)
            dict_apps[this_app]=method_counter
    
    dict_apps = {k: v for k, v in dict_apps.items() if 'banner' not in k and 'Banner' not in k}        
    new_lines=[]
    for line in lines:
        if not "->" in line:
            if line.strip() in dict_apps.keys():
                new_lines.append(line)
        else:
            new_lines.append(line)
    print_this=False
    method_counter=0
    print_app=False
    this_app=''
    new_lines2=[]
    for line in new_lines:
        if not "->" in line:
            print_app=True
            this_app = line.strip()
            method_counter=0
            # print(line.strip())
            new_lines2.append(line)
        if print_app and not (this_app == line.strip()):
            method_counter=method_counter+1
            # print(line.strip())
            new_lines2.append(line)
            # print(method_counter)
    with open(path, "w") as file:
        file.writelines(new_lines2)
    os.chdir(pwd)
    return(new_lines2)

def Generate_Model_From_Lines_in_File(this_path):
    helper=Helper.Helper()
    pwd=os.getcwd()
    os.chdir('../Data/')
    this_lines=Return_Lines_From_File(this_path)
    this_app = ''
    dict_apps={}
    for line in this_lines:
        if not line.__contains__("->"):
            # print('App:', line)
            this_app=line.strip()
            dict_apps[this_app]=[]
        else:
            # print(line.strip(),'(',this_app,')')
            dict_apps[this_app].append(line.strip())
    
    # print(dict_apps.keys())
    for this_key in dict_apps.keys():
        # print(this_key, dict_apps[this_key])
        this_states=Return_States_Based_On_Transitions(helper.unique(dict_apps[this_key]))
        print(this_key, this_states)
        Generate_Model_From_List(this_key, this_states)
    os.chdir(pwd)

def Cleanup_FSM_Model_Folder():
    pwd=os.getcwd()
    os.chdir('../Data/FSM_Models')
    # print(os.listdir())
    for file in os.listdir():
        if not file.__contains__('.png'):
            os.remove(file)
        else:
          Convert_PNG_To_PDF(file)
          os.remove(file)  
    os.chdir(pwd)

os.system('clear')

# all_data_from_blockchain=Return_DF_And_Apps_From_Blockchain_Data('0xdE2ED5049eb256D14d5F88b77bc041C77daf0702', '0xf189036b58739d7b93eb7a2404e609aa1a483f7aaa034b04cfa697bf6133c2f7', '0x6eC04225C7ca6b4F1B0552ED72835e8722ec491b')
# print(all_data_from_blockchain[0])
# print(all_data_from_blockchain[1])
# Generate_Log_File_For_App_Names_And_Transitions(all_data_from_blockchain[0], all_data_from_blockchain[1], all_data_from_blockchain[2])
# Cleanup_File_App_Transitions()
Generate_Model_From_Lines_in_File('App_Transitions2.txt')
Cleanup_FSM_Model_Folder()