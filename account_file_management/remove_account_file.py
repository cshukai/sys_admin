
import os
with open("/root/rm_list") as f:
    for line in f:
        os.system("userdel "+line.split(":",1)[0])