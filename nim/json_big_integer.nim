import std/json

let event = parseJson("""{"id": 9007199254740993}""")
echo event["id"]
