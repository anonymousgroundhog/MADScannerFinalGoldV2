import pandas as pd

df = pd.read_csv('nohup.out', sep='---', names=['timestamp', 'app_name', 'label','unit', 'memory_locations'])
print(df['unit'])
