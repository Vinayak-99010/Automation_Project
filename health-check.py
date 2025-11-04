import os
import subprocess
import time

SERVICES = ["nginx", "docker"]

while True:
    for service in SERVICES:
        status = subprocess.getoutput(f"systemctl is-active {service}")
        if status != "active":
            os.system(f"systemctl restart {service}")
            print(f"⚠️ Restarted {service} on failure")
    time.sleep(60)
