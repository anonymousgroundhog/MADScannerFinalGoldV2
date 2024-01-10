
import os, time
# from web3 import Web3, EthereumTesterProvider
from web3 import Web3, HTTPProvider
# from eth_abi import encode

class Blockchain:
	def __init__(self):
		self.web3 = ''
		self.blockchain_address = 'http://127.0.0.1:8545'
		self.abi = ''
		self.contract_address = ''
		self.contract_instance = ''
		self.sender_address = ''
		self.private_key = ''

	def Set_Sender_Address(self, key):
		self.sender_address = key

	def Set_Private_key(self, key):
		self.private_key = key

	def Set_ABI(self, abi):
		self.abi = abi
    
	def Set_Contract_Address(self, str_addr):
		self.contract_address = str_addr
    
	def Connect(self):
		self.web3 = Web3(HTTPProvider(self.blockchain_address)) 
		# web3.eth.defaultAccount = web3.eth.accounts[0]
	    

	def Set_Contract_Instance(self):
		self.contract_instance = self.web3.eth.contract(address=self.contract_address, abi=self.abi)
		print(self.web3.is_connected())

	def Read_Data(self, id):
		output = self.contract_instance.functions.getLogs(id).call()
		return(output)

	def Return_Available_Log_IDs(self):
		output = self.contract_instance.functions.getLogIds().call()
		return(output)
	
	def Add_Data(self, id, app_name, this_class, this_method, this_date_and_time):
		nonce = self.web3.eth.get_transaction_count(self.sender_address)
		tx = self.contract_instance.functions.addLog(id, app_name, this_class, this_method, this_date_and_time).build_transaction({'nonce': nonce, 'gas': 3000000})#1,000,000,008
		signed_tx = self.web3.eth.account.sign_transaction(tx, private_key=self.private_key)
		send = self.web3.eth.send_raw_transaction(signed_tx.rawTransaction)
		txid = send.hex()
		print(self.web3.eth.get_transaction_receipt(txid))
		# time.sleep(1)
# os.system('clear')
# blockchain = Blockchain()
# blockchain.Connect()
# blockchain.Set_Private_key('0x6869b9522e5b2c3c9dc84f91d8ec1eef86819ec1c10c47d1e76c58d1e2376315')
# blockchain.Set_Sender_Address('0xDf63815Bde257E17150ef37afa498cbdaa976D1F')
# blockchain.Set_ABI('[{"inputs": [{"internalType": "string", "name": "appId", "type": "string" }, {"internalType": "string", "name": "logApp", "type": "string" }, {"internalType": "string", "name": "logClass", "type": "string" }, {"internalType": "string", "name": "logMethod", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [{"components": [{"internalType": "address", "name": "sender", "type": "address" }, {"internalType": "string", "name": "app_name", "type": "string" }, {"internalType": "string", "name": "log_class", "type": "string" }, {"internalType": "string", "name": "log_method", "type": "string" }, {"internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogsClasses", "outputs": [{"internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogsMethods", "outputs": [{"internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" } ]')
# blockchain.Set_Contract_Address('0x3c342AB06C17BbD9E75A14607A495191f4fCa099')
# blockchain.Set_Contract_Instance()
# blockchain.Add_Data('id2', 'app1', 'class1', 'method1')
# blockchain.Add_Data('id2', 'app1', 'class2', 'method2')
# blockchain.Add_Data('id2', 'app1', 'class3', 'method3')
# blockchain.Read_Data('id2')
# print(blockchain.contract_instance.functions.getLogs('id1').call())