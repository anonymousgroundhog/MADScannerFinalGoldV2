import os, pandas as pd, graphviz, numpy as np
from functools import reduce
from itertools import islice

class StateMachine:
    
    def __init__(self):
        self.title = None
        self.digraph = graphviz.Digraph(comment=self.title)
        # self.startState = None
        # self.endStates = []

    def add_title(self, name):        
        self.title = name
    
    def add_states(self):
        self.digraph.node('appstarted', 'The app has started')
        self.digraph.node('appstarted_with_ads', 'The app has started with ads displayed')
        self.digraph.node('appstarted_no_ads', 'The app has started with no Ads displayed')
        self.digraph.node('appstarted_adview_set', 'The app has started and an adView was set')
        self.digraph.node('apprunning_ad_loaded', 'The app is running and the advertisement is loaded')
        self.digraph.node('apprunning_ad_impression', 'The app is running and the advertisement impression is made')
        self.digraph.node('apprunning_ad_engagement', 'The app is running and the advertisement engagement is made')
    
    def add_dot_node(self, label, name):
        self.digraph.node(label, name)

    def add_dot_edge(self, A, B, label_data):
        self.digraph.edge(A, B, constraint='false', label=label_data)

    def save_as_pdf(self, filename):
        self.digraph.render('../Data/FSM_Models/'+filename+'.gv', view=True)

def unique(list1):
 
    # Print directly by using * symbol
    ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
    print(ans)

def sliding_window_iter(seq, n=2):
    "Returns a sliding window (of width n) over data from the iterable"
    "   s -> (s0,s1,...s[n-1]), (s1,s2,...,sn), ...                   "
    it = iter(seq)
    result = tuple(islice(it, n))
    if len(result) == n:
        yield result
    for elem in it:
        result = result[1:] + (elem,)
        yield result

df = ""
def Open_File_And_Generate_Dataframe(this_path):
    print("\n"+this_path)
    app_name_list = []
    app_hash_list = []
    app_class_list = []
    app_method_list = []
    app_ad_id_list = []

    with open(this_path) as file:
        lines = [line.rstrip() for line in file]
        del lines[0]
        del lines[0]
    for item in lines:
        content = item.split(":")
        content_to_manipulate=content.pop()
        content_to_manipulate_list = content_to_manipulate.split("---")
        app_name_list.append(content_to_manipulate_list[0])
        app_hash_list.append(content_to_manipulate_list[1])
        app_class_list.append(content_to_manipulate_list[2])
        app_method_list.append(content_to_manipulate_list[3])
        app_ad_id_list.append(content_to_manipulate_list[4])

    data = {
        'App_Name': app_name_list,
        'App_Hash': app_hash_list,
        'App_Class': app_class_list,
        'App_Method':app_method_list,
        'App_Ad_ID':app_ad_id_list
    }
    df = pd.DataFrame(data)
    
    # filtered_df = df.query( 'App_Method == ["onCreate", "setContentView", "setAdListener", "initialize", "findViewById", "loadAd", "onAdImpression", "onAdClicked", "onAdLoaded"]' )
    filtered_df = df.query( 'App_Method == ["setContentView", "setAdListener", "initialize", "findViewById", "onAdImpression", "onAdClicked", "onAdLoaded"]' )

    unique_apps=pd.unique(filtered_df[['App_Name']].values.ravel())

    for app_name in unique_apps:
        print("\nApp Name:" + app_name)
        rslt_df = filtered_df[filtered_df['App_Name'] == app_name]
        # print(rslt_df)
        transitions=rslt_df[['App_Method', 'App_Ad_ID']]
        
        transitions = transitions.loc[~((transitions['App_Ad_ID'] == 'null') & ((transitions['App_Method'] == 'onAdLoaded') | 
                                                                        (transitions['App_Method'] == 'onAdImpression')| 
                                                                        (transitions['App_Method'] == 'onAdClicked')))]
        
        # prev=None
        # print(type(transitions))
        # list_transition_methods= transitions['App_Method']
        # list_transition_ids= transitions['App_Ad_ID']
        # print(str(list_transition_methods))
        # print(str(list_transition_ids))
        transitions['Graph'] = np.nan
        transitions = transitions.reset_index(drop=True)
        set_setContentView = set(np.where(transitions.App_Method == 'setContentView')[0])
        set_setAdListener = set(np.where(transitions.App_Method == 'setAdListener')[0])
        set_initialize = set(np.where(transitions.App_Method == 'initialize')[0])


        # set_empty = set(pd.isna(transitions['Graph']))
        # set_empty = set(np.where(pd.isna(transitions['Graph']))[0])
        # print(set_initialize)
        counter1 = 0
        for loc in sorted(set_setContentView):
            counter1=counter1+1
            transitions.at[loc,'Graph'] = counter1
        
        set_empty = set(np.where(pd.isna(transitions['Graph']))[0])
        # print("Empty locations:",set_empty)
        # orphans = sorted(set(set_setContentView).difference(set_empty))
        # print(orphans)
        counter2 = 0
        for loc in sorted(set_empty):
            loc2=loc-1
            col_list = transitions["Graph"].values.tolist()
            # print('length:', transitions[transitions.columns[0]].count())
            if transitions[transitions.columns[0]].count() == 1:
                counter2 = counter2 + 1
                transitions.at[loc,'Graph'] = counter2
            elif col_list[loc2] != np.nan:
                # print("Prev Val ",col_list[loc2])
                transitions.at[loc,'Graph'] = col_list[loc2]
            else:
                # print("Prev Val ",col_list[loc2])
                counter2 = counter2 + 1
                transitions.at[loc,'Graph'] = counter2

        # print(transitions)

        # Set states and add new graph for each
        print("Unique graph numbers:",transitions['Graph'].unique())
        for graph in transitions['Graph'].unique():
            print("Graph: ", graph)
            state_machine = StateMachine()
            state_machine.add_title("App Testing"+str(graph))
            state_machine.add_states()
            rslt_df = transitions[transitions['Graph'] == graph]
            this_transitions=list(sliding_window_iter(rslt_df['App_Method'], 2))
            this_advertisement_id=list(sliding_window_iter(rslt_df['App_Ad_ID'], 2))
            print(rslt_df)
            print(this_transitions)
            print(this_advertisement_id)
        # state_machine.add_dot_node("T1", "Testing")
        # state_machine.add_dot_node("T2", "Testing2")
        # state_machine.add_dot_edge("T1", "T2", 'Testing data')
        # print(state_machine.digraph)
        # state_machine.save_as_pdf(app_name)

for file in os.listdir("../Data/Logs"):
    path="".join(["../Data/Logs/",file])
    Open_File_And_Generate_Dataframe(path)