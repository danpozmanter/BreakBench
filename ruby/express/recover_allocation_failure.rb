# LEVEL: LANGUAGE

n = Integer(ARGV[0])
begin
  String.new(capacity: n)
  puts "allocated"
rescue NoMemoryError, ArgumentError
  puts "allocation failed"
end
