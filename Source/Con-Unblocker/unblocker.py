import os
import sys
import ntpath
import subprocess


dir_path = " ".join(sys.argv[1:])

if os.path.isdir(dir_path):  # attempts to block running files in a folder
    for root, _, files in os.walk(dir_path):
        for x in files:
            path = os.path.join(root, x)
            subprocess.Popen(f'netsh advfirewall firewall delete rule name=all program="{path}"', shell=True)
            # removes any current connections

            subprocess.Popen(f'netsh advfirewall firewall add rule name="{path}" dir=in program="{path}" action=allow', shell=True)
            subprocess.Popen(f'netsh advfirewall firewall add rule name="{path}" dir=out program="{path}" action=allow', shell=True)
            # allows connection
            
else:  # attempts to block a file
    subprocess.Popen(f'netsh advfirewall firewall delete rule name=all program="{dir_path}"', shell=True)
    # removes any current connections

    subprocess.Popen(f'netsh advfirewall firewall add rule name="{dir_path}" dir=in program="{dir_path}" action=allow', shell=True)
    subprocess.Popen(f'netsh advfirewall firewall add rule name="{dir_path}" dir=out program="{dir_path}" action=allow', shell=True)
    # allows connection