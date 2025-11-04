import re
import time

log_file = "/var/log/nginx/error.log"
error_pattern = re.compile(r'error|critical|fail', re.IGNORECASE)

def monitor_logs():
    with open(log_file) as f:
        f.seek(0, 2)  # Move to end of file
        while True:
            line = f.readline()
            if line and error_pattern.search(line):
                print(f"⚠️ Error detected: {line.strip()}")
            time.sleep(1)

monitor_logs()
