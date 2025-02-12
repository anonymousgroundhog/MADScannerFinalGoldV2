import os
import Blockchain_Gold as Blockchain
from termcolor import colored, cprint

cwd= os.getcwd()
os.chdir('../Data/Logs/')


blockchain = Blockchain.Blockchain()
blockchain.Connect()
blockchain.Set_Private_key('0xce4ad6bea98d5fd049d6b9ce2c9817ae6e1b263bfe578d4b5101afa2439fc1fe')
blockchain.Set_Sender_Address('0x07842b8C2EC9D353b7aBe41F77AaF01AB79c73Dd')
blockchain.Set_ABI('[ { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" }, { "internalType": "string", "name": "logClass", "type": "string" }, { "internalType": "string", "name": "logLibrary", "type": "string" }, { "internalType": "string", "name": "logMethod", "type": "string" }, { "internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "elementToLookFor", "type": "string" } ], "name": "exists_in_logs_array", "outputs": [ { "internalType": "bool", "name": "", "type": "bool" } ], "stateMutability": "view", "type": "function" }, { "inputs": [], "name": "getLogIds", "outputs": [ { "internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "uint256", "name": "", "type": "uint256" } ], "name": "log_ids", "outputs": [ { "internalType": "string", "name": "", "type": "string" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appID", "type": "string" } ], "name": "returnLogs", "outputs": [ { "components": [ { "internalType": "string[]", "name": "log_class", "type": "string[]" }, { "internalType": "string[]", "name": "log_library", "type": "string[]" }, { "internalType": "string[]", "name": "log_method", "type": "string[]" }, { "internalType": "string[]", "name": "log_date_and_time", "type": "string[]" } ], "internalType": "struct MultiAppLogTracker.Log", "name": "", "type": "tuple" } ], "stateMutability": "view", "type": "function" } ]')
blockchain.Set_Contract_Address('0x11242d4E5A9E64e07351A3f8Eb65E6335B93A807')
blockchain.Set_Contract_Instance()

for file in os.listdir():
    if 'txt' in file:
        print(file)
        file_name= file.replace(' ', '').replace('.txt','')

        with open(file) as file:
            lines = [line.rstrip() for line in file]
            while len(lines) > 1 and lines[0].__contains__("---------"):
                del lines[0]

            for item in lines:
                content = item.split(":")
                content_to_manipulate=content.pop()
                content_to_manipulate='---'.join([str(file_name),content_to_manipulate])
                content_to_manipulate=content_to_manipulate.replace(' ','')
                content_to_manipulate = content_to_manipulate.split('---')
                if len(content_to_manipulate) >= 4:
                    this_date=content_to_manipulate [0]
                    this_hash=content_to_manipulate [2]
                    this_class=content_to_manipulate [3]
                    this_method=content_to_manipulate [4]
                    blockchain.Add_Data(this_hash,this_hash, this_class, this_method, this_date)

