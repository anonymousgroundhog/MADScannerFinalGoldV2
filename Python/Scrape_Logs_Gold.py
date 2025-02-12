import os
from termcolor import colored, cprint

cwd= os.getcwd()
os.chdir('../Data/Logs/')

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
                print(content_to_manipulate)
