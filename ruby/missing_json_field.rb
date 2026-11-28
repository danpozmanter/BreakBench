require "json"

user = JSON.parse('{"name": "Ada"}') # CONTROL! user = JSON.parse('{"name": "Ada", "age": 36}')
puts user["age"] + 1
