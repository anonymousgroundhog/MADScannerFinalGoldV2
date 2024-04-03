import os, pyandrozoo
from termcolor import colored, cprint

os.chdir('../APK/Androzoo')

user_api_key = input("Enter in api key and press enter: ")

cprint(' '.join(['API key is',user_api_key]), 'green')

# cmd=''.join(['curl -O --remote-header-name -G -d apikey=', user_api_key, ' -d sha256=fa93a5998390bc23949ba86e044e72f8ae20829dd220289b375bfaa76f86bd9a https://androzoo.uni.lu/api/download'])
# cprint(cmd, 'yellow')
# os.system(cmd)
androzoo = pyandrozoo.pyAndroZoo(user_api_key)
androzoo.get(['BC564D52C6E79E1676C19D9602B1359A33B8714A1DC5FCB8ED602209D0B70266'])