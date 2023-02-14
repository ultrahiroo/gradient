import subprocess
import json

print(4 * len(json.loads(subprocess.check_output(['gc-monitor', '-j']))['cards']))
