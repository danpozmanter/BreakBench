# LEVEL: LANGUAGE

n = ARGV[0].to_i64
begin
  n + 1
  puts "ok"
rescue OverflowError
  puts "overflow"
end
