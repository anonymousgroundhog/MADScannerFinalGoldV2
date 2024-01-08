import os
from web3 import Web3, EthereumTesterProvider
class Blockchain:
	def __init__(self):
		self.w3 = ''
		self.provider_url = 'http://127.0.0.1:7545'
		self.abi = ''
		self.contract_address = ''
		self.contract_instance = ''
		self.private_key = "0xd68e25a0467fbe20eabfe5e09b3a8a208763b38651d98f2210c68bd9df275cf3"

	def Set_ABI(self, file_path):
		with open(file_path, 'r') as file:
		    long_string = file.read().replace('\n', '')
		self.abi = long_string
    
	def Set_Contract_Address(self, str_addr):
		self.contract_address = str_addr
    
	def Connect(self):
	    # provider_url = 'http://127.0.0.1:7545'
	    self.w3 = Web3(Web3.HTTPProvider(self.provider_url))
	    # print(self.w3.is_connected())

	def Set_Contract_Instance(self):
		self.contract_instance = self.w3.eth.contract(address=self.contract_address, abi=self.abi)

	def Call_Contract(self):
		storage_sol = self.w3.eth.contract(abi=self.abi, address=tx_receipt.contractAddress)
		call_fun = storage_sol.functions.store(5).buildTransaction(
		    {"chainId": chain_id, "from": my_address, "nonce": nonce + 1}
		)
		sign_call_fun = w3.eth.account.signTransaction(call_fun, private_key=private_key)
		tx_call_fun_hash = w3.eth.send_raw_transaction(sign_call_fun.rawTransaction)
		tx_call_fun_receipt = w3.eth.wait_for_transaction_receipt(tx_call_fun_hash)

		print(storage_sol.functions.retrieve().call())

os.system('clear')
# blockchain = Blockchain()
# blockchain.Connect()
# blockchain.Set_ABI('../Data/Blockchain/abi.txt')
# blockchain.Set_Contract_Address('0x41fBF27676522D3189904d2643de84B3c2E073Cd')
# blockchain.Set_Contract_Instance()
# print(blockchain.contract_instance.functions.getLogs('id1').call())


infura_url = 'http://127.0.0.1:7545'
web3 = Web3(Web3.HTTPProvider(infura_url))

print(web3.is_connected())

print(web3.eth.block_number)

# Fill in your account here
balance = web3.eth.get_balance("0x41fBF27676522D3189904d2643de84B3c2E073Cd")
print(web3.from_wei(balance, "ether"))

with open('../Data/Blockchain/abi.txt', 'r') as file:
	long_string = file.read().replace('\n', '')

abi = long_string
address = "0x41fBF27676522D3189904d2643de84B3c2E073Cd"
private_key='0xd68e25a0467fbe20eabfe5e09b3a8a208763b38651d98f2210c68bd9df275cf3'
contract = web3.eth.contract(address=address, abi=abi)
Chain_id = web3.eth.chain_id
nonce = web3.eth.get_transaction_count(address)

# Call your function
# call_function = contract.functions.getLogs('id1').build_transaction({"chainId": Chain_id, "from": address, "nonce": nonce})

# Sign transaction
# signed_tx = web3.eth.account.sign_transaction(call_function, private_key=private_key)

# Send transaction
# send_tx = web3.eth.send_raw_transaction(signed_tx.rawTransaction)

# Wait for transaction receipt
# tx_receipt = web3.eth.wait_for_transaction_receipt(send_tx)
# print(tx_receipt)
call_function = contract.functions.getLogs("id1").call()
print(call_function)