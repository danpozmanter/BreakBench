# LEVEL: STD

require "json"

good = JSON.parse('{"port": 8080, "debug": true}')
result = begin
  JSON.parse("{port: 8080}")
  "valid"
rescue JSON::ParserError
  "invalid"
end
puts "#{good["port"]} #{result}"
