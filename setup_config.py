from art import tprint
from modules import conf
import os

tprint('W88 Installer')

print("Start installation?")
if conf():
    os.system("./configs.sh")
else:
    exit()

print("Installed. Rebooting...")
sleep(3)
os.system("reboot")
