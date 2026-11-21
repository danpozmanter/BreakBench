# LEVEL: STD

x = Float64::NAN
begin
  x.to_i64
  puts "fits"
rescue OverflowError
  puts "does not fit"
end
