# Python program to call the 
# smart contract
import json
from web3 import Web3, HTTPProvider

# truffle development blockchain address
blockchain_address = 'http://127.0.0.1:7545'

# Client instance to interact with the blockchain
web3 = Web3(HTTPProvider(blockchain_address)) 

nonce = web3.eth.get_transaction_count('0xDf63815Bde257E17150ef37afa498cbdaa976D1F')
contract_abi = '[{"inputs": [{"internalType": "string", "name": "appId", "type": "string" }, {"internalType": "string", "name": "logApp", "type": "string" }, {"internalType": "string", "name": "logClass", "type": "string" }, {"internalType": "string", "name": "logMethod", "type": "string" } ], "name": "addLog", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogs", "outputs": [{"components": [{"internalType": "address", "name": "sender", "type": "address" }, {"internalType": "string", "name": "app_name", "type": "string" }, {"internalType": "string", "name": "log_class", "type": "string" }, {"internalType": "string", "name": "log_method", "type": "string" }, {"internalType": "uint256", "name": "timestamp", "type": "uint256" } ], "internalType": "struct MultiAppLogTracker.Log[]", "name": "", "type": "tuple[]" } ], "stateMutability": "view", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogsClasses", "outputs": [{"internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" }, {"inputs": [{"internalType": "string", "name": "appId", "type": "string" } ], "name": "getLogsMethods", "outputs": [{"internalType": "string[]", "name": "", "type": "string[]" } ], "stateMutability": "view", "type": "function" } ]'
deployed_contract_address = '0x3c342AB06C17BbD9E75A14607A495191f4fCa099'
# Fetching deployed contract reference
contract = web3.eth.contract(
	address = deployed_contract_address, abi = contract_abi)

tx = contract.functions.addLog("id1", "app1", "m1", "m2").build_transaction({'nonce': nonce, 'gas': 3000000})
signed_tx = web3.eth.account.sign_transaction(tx, private_key='0x6869b9522e5b2c3c9dc84f91d8ec1eef86819ec1c10c47d1e76c58d1e2376315')
web3.eth.send_raw_transaction(signed_tx.rawTransaction)
output = contract.functions.getLogs('id1').call()
print(output)