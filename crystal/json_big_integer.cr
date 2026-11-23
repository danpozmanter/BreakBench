require "json"

event = JSON.parse(%({"id": 9007199254740993}))
puts event["id"]
