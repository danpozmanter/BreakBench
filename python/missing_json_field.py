import json

user = json.loads('{"name": "Ada"}')  # CONTROL! user = json.loads('{"name": "Ada", "age": 36}')
print(user["age"] + 1)
