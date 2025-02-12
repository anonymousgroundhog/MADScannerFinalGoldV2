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
		self.web3 = Web3(HTTPProvider(self.blockchain_address, request_kwargs={'timeout': 60})) 
		# web3.eth.defaultAccount = web3.eth.accounts[0]
	    

	def Set_Contract_Instance(self):
		self.contract_instance = self.web3.eth.contract(address=self.contract_address, abi=self.abi)
		print(self.web3.is_connected())

	def Read_Data(self, id):
		output = self.contract_instance.functions.returnLogs(id).call()
		return(output)

	def Setup_Model(self):
		nonce = self.web3.eth.get_transaction_count(self.sender_address)
		tx = self.contract_instance.functions.Setup_Model().build_transaction({'nonce': nonce, 'gas': 3000000})#1,000,000,008
		signed_tx = self.web3.eth.account.sign_transaction(tx, private_key=self.private_key)
		send = self.web3.eth.send_raw_transaction(signed_tx.rawTransaction)
		txid = send.hex()
		print(self.web3.eth.get_transaction_receipt(txid))
	def Return_Available_Log_IDs(self):
		output = self.contract_instance.functions.getLogIds().call()
		return(output)
	
	def Add_Data(self, id, this_class, this_library, this_method, this_date_and_time):
		nonce = self.web3.eth.get_transaction_count(self.sender_address)
		tx = self.contract_instance.functions.addLog(id, this_class, this_library, this_method, this_date_and_time).build_transaction({'nonce': nonce, 'gas': 3000000})#1,000,000,008
		signed_tx = self.web3.eth.account.sign_transaction(tx, private_key=self.private_key)
		send = self.web3.eth.send_raw_transaction(signed_tx.raw_transaction)
		txid = send.hex()
		print(self.web3.eth.get_transaction_receipt(txid))


os.system('clear')
blockchain = Blockchain()
blockchain.Connect()
blockchain.Set_Private_key('0xe85edb130f706d72a676f0bd5258c06cbdec098122d5766cb9f2681fffa0f882')
blockchain.Set_Sender_Address('0x9925323ab2b3C499FC28dAEA0D44fFFDAaeFE0d0')
blockchain.Set_ABI('[ { "inputs": [ { "internalType": "string", "name": "appId", "type": "string" }, { "internalType": "string", "name": "logClass", "type": "string" }, { "internalType": "string", "name": "logLibrary", "type": "string" }, { "internalType": "string", "name": "logMethod", "type": "string" }, { "internalType": "string", "name": "logDateAndTime", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "elementToLookFor", "type": "string" } ], "name": "exists_in_logs_array", "outputs": [ { "internalType": "bool", "name": "", "type": "bool" } ], "stateMutability": "view", "type": "function" }, { "inputs": [], "name": "getLogIds", "outputs": [ { "internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "uint256", "name": "", "type": "uint256" } ], "name": "log_ids", "outputs": [ { "internalType": "string", "name": "", "type": "string" } ], "stateMutability": "view", "type": "function" }, { "inputs": [ { "internalType": "string", "name": "appID", "type": "string" } ], "name": "returnLogs", "outputs": [ { "components": [ { "internalType": "string[]", "name": "log_class", "type": "string[]" }, { "internalType": "string[]", "name": "log_library", "type": "string[]" }, { "internalType": "string[]", "name": "log_method", "type": "string[]" }, { "internalType": "string[]", "name": "log_date_and_time", "type": "string[]" } ], "internalType": "struct MultiAppLogTracker.Log", "name": "", "type": "tuple" } ], "stateMutability": "view", "type": "function" } ]')
blockchain.Set_Contract_Address('0x577b830BfB33bAa19CAfa33343c5d8cb8b48E178')
blockchain.Set_Contract_Instance()
blockchain.Add_Data('id2', 'app1', 'class1', 'method1', '2-12-24')
blockchain.Add_Data('id2', 'app1', 'class2', 'method2', '2-12-24')
blockchain.Add_Data('id2', 'app1', 'class3', 'method3', '2-12-24')
print(blockchain.Read_Data('id2'))
# print(blockchain.contract_instance.functions.getLogs('id1').call())
