date = Time.utc(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i) # BREAK!
puts date.to_s("%F") # BREAK!
# CONTROL! begin
  # CONTROL! puts Time.utc(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i).to_s("%F")
# CONTROL! rescue ArgumentError
  # CONTROL! puts "invalid"
# CONTROL! end
