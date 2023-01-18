import subprocess
import json

j = subprocess.check_output(['gc-monitor', '-j'])
data = json.loads(j)
num_ipuMs = len(data['cards'])
num_ipus = 4 * num_ipuMs

print(num_ipus)
