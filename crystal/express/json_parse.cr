# LEVEL: STD

require "json"

good = JSON.parse(%q({"port": 8080, "debug": true}))
result = begin
  JSON.parse("{port: 8080}")
  "valid"
rescue JSON::ParseException
  "invalid"
end
puts "#{good["port"].as_i} #{result}"
