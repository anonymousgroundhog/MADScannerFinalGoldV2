import os, numpy as np
from termcolor import colored, cprint

def unique(list1):
	x = np.array(list1)
	return np.unique(x).tolist()


def Return_States_Based_On_Transitions(this_transition_list):
	lst_states=[]
	if len(this_transition_list) > 0:
		for idx,transition in enumerate(this_transition_list):
			transition=str(transition)
			print(transition.split(' -> ')[0])
			if idx==0 and transition.split(' -> ')[0].__contains__('attachInfo'):
				lst_states.append('The app has started')
		return lst_states

this_path='../Data/App_Transitions.txt'

os.system('clear')

lst_app_names=[]
lst_transitions=[]

lst_app_name=''
index_val=''
with open(this_path) as file:
	lines = [line.rstrip() for line in file]
	for idx,line in enumerate(lines):
		if line.__contains__('True'):
			lst_app_names.append(lst_app_name)
			transition=lines[idx-1]
			lst_transitions.append(transition)
			# cprint(transition, 'green')
		elif not line.__contains__('->') and not line.__contains__('False') and not line.strip().__contains__('\n'):
			lst_app_name=line
			if len(lst_transitions) > 1:
				cprint('App Name:'+str(lines[index_val]),'yellow')
				cprint(unique(lst_transitions), 'yellow')
				cprint('states:'+str(Return_States_Based_On_Transitions(unique(lst_transitions))), 'yellow')
			lst_transitions=[]
			index_val=idx
			# cprint(line+' '+str(idx), 'white')