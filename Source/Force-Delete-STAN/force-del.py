import os
import sys
import ntpath
import subprocess
import time


dir_path = " ".join(sys.argv[1:])
del_attempts = 3


if os.path.isdir(dir_path):  # attempts to kill tasks and delete folders
    for root, _, files in os.walk(dir_path):
        for x in files:
            subprocess.Popen(f'taskkill /F /IM "{x}"', shell=True)
            subprocess.Popen(f'DEL /F /Q /S "{os.path.join(root, x)}"', shell=True)

    for root, dirs, _ in os.walk(dir_path):  # attempts to clear internal folders
        for y in dirs:
            subprocess.Popen(f'DEL /F /Q /S "{os.path.join(root, y)}"', shell=True)
            subprocess.Popen(f'RMDIR /Q /S "{os.path.join(root, y)}"', shell=True)

else:  # deletes individual file if selected
    subprocess.Popen(f'taskkill /F /IM "{ntpath.basename(dir_path)}"', shell=True)

    
time.sleep(del_attempts)
subprocess.Popen(f'DEL /F /Q /S "{dir_path}" > NUL', shell=True)
subprocess.Popen(f'RMDIR /Q /S "{dir_path}"', shell=True)
# deletes empty folder