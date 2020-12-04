import os
import sys
import ntpath
import subprocess
import time


dir_path = " ".join(sys.argv[1:])
del_attempts = 3

subprocess.Popen("taskkill /F /IM msedge.exe", shell=True)
subprocess.Popen("taskkill /F /IM chrome.exe", shell=True)
subprocess.Popen("taskkill /F /IM firefox.exe", shell=True)
# closes browsers

if os.path.isdir(dir_path):  # attempts to kill tasks and delete folders
    for root, _, files in os.walk(dir_path):
        for x in files:
            subprocess.Popen(f'taskkill /F /IM "{x}"', shell=True)
            subprocess.Popen(f'DEL /F /Q /S "{os.path.join(root, x)}" > NUL', shell=True)

    for root, dirs, _ in os.walk(dir_path):  # attempts to clear internal folders
        for y in dirs:
            subprocess.Popen(f'DEL /F /Q /S "{os.path.join(dir_path)}" > NUL', shell=True)

else:
    subprocess.Popen(f'taskkill /F /IM "{ntpath.basename(dir_path)}"', shell=True)

for _ in range(del_attempts):  # runs a specified number of times to attempt to delete
    subprocess.Popen(f'DEL /F /Q /S "{dir_path}" > NUL', shell=True)
    time.sleep(1)

subprocess.Popen(f'RMDIR /Q /S "{dir_path}" > NUL', shell=True)
# deletes empty folder