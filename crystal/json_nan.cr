require "json"

count = ARGV[0].to_i
mean = 0.0 / count
puts({mean: mean}.to_json) # CONTROL! puts(begin; {mean: mean}.to_json; rescue JSON::Error; "refused"; end)
