# LEVEL: STD

at_exit do |status, exception|
  puts "hook ran" if exception
end
raise "boom"
