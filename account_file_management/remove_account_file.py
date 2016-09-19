# space calcuation 
import os
def get_size(start_path = '/usr/mvl1'):
    
    for dirpath, dirnames, filenames in os.walk(start_path):
        total_size = 0
        for d in dirpath:
            for f in filenames:
                if(os.path.isfile(f)):
                    fp = os.path.join(dirpath, f)
                    total_size += os.path.getsize(fp)   
        print(dirpath,"_size_",total_size)   

get_size()

# account management
import os
with open("/root/rm_list") as f:
    for line in f:
        #os.system("userdel "+line.split(":",1)[0])
        line.split(":",1)[0]
        
