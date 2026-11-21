# LEVEL: STD

v = ARGV[0].to_i
begin
  v.to_u8
  puts "fits"
rescue OverflowError
  puts "does not fit"
end
