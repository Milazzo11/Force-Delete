import os
import sys
import ntpath
import subprocess
import time


dir_path = " ".join(sys.argv[1:])
del_attempts = 3

if os.path.isdir(dir_path):  # kills tasks
    for root, _, files in os.walk(dir_path):
        for x in files:
            subprocess.Popen(f'taskkill /F /IM "{x}"', shell=True)

else:
    subprocess.Popen(f'taskkill /F /IM "{ntpath.basename(dir_path)}"', shell=True)