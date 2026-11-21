# LEVEL: STD

import std/json

let good = parseJson("""{"port": 8080, "debug": true}""")
var result = "valid"
try:
  discard parseJson("{port: 8080}")
except JsonParsingError:
  result = "invalid"
echo good["port"].getInt, " ", result
