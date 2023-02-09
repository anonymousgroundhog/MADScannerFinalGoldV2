import pandas as pd

file1 = open('nohup.out', 'r')
count = 0
  
df = pd.DataFrame(columns=['day','time','app', 'label','unit','memory'])
day = []
time = []
app = []
label = []
unit = []
memory = []
while True:
    count += 1
  
    # Get next line from file
    line = file1.readline()
  
    # if line is empty
    # end of file is reached
    if not line:
        break
    if not line.__contains__('unexpected') and not line.__contains__('--------- '):
        #print("Line{}: {}".format(count, line.strip()))
        line_split = line.strip().split('---')
        timestamp= line.strip().split('D FiniteState: ')
        timestamp = timestamp[0].split(' ')
#        timestamp = ''.join([timestamp[0],' ', timestamp[1]])
        otherdetails = line_split
        del otherdetails[0]
        otherdetails.insert(0,timestamp[1])
        otherdetails.insert(0,timestamp[0])
#        #del otherdetails[2]
        if len(otherdetails) > 5:
            day.append(otherdetails[0])
            time.append(otherdetails[1])
            app.append(otherdetails[2])
            label.append(otherdetails[3])
            unit.append(otherdetails[4])
            memory.append(otherdetails[5])
##            print(otherdetails)
#            df.loc[len(df)] = otherdetails
file1.close()

print(day)
