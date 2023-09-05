import os, pandas as pd, graphviz
from functools import reduce

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
    filtered_df = df.query( 'App_Method == ["setContentView", "setAdListener", "initialize", "findViewById", "loadAd", "onAdImpression", "onAdClicked", "onAdLoaded"]' )

    unique_apps=pd.unique(filtered_df[['App_Name']].values.ravel())

    for app_name in unique_apps:
        print("\nApp Name:" + app_name)
        rslt_df = filtered_df[filtered_df['App_Name'] == app_name]
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
        
        this_str=""
        for index, row in transitions.iterrows():
            # line=row['App_Method'], row['App_Ad_ID']
            # print(line)
            if this_str != "":
                this_str = this_str + " --> " + row['App_Method'] + "(" + row['App_Ad_ID']+ ")"
            else:
                this_str = row['App_Method'] + "(" + row['App_Ad_ID']+ ")"
            # if prev != None:
            print(this_str.split(" --> "))
        # print(transitions)
        # df1 = transitions.drop_duplicates(keep='first')
        # print(rslt_df) 
        # print(df1)

        state_machine = StateMachine()
        state_machine.add_title("App Testing")
        state_machine.add_states()
        # state_machine.add_dot_node("T1", "Testing")
        # state_machine.add_dot_node("T2", "Testing2")
        # state_machine.add_dot_edge("T1", "T2", 'Testing data')
        # print(state_machine.digraph)
        # state_machine.save_as_pdf(app_name)

for file in os.listdir("../Data/Logs"):
    path="".join(["../Data/Logs/",file])
    Open_File_And_Generate_Dataframe(path)