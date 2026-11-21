# LEVEL: STD

import json

good = json.loads('{"port": 8080, "debug": true}')
try:
    json.loads("{port: 8080}")
    result = "valid"
except json.JSONDecodeError:
    result = "invalid"
print(good["port"], result)
