# LEVEL: LANGUAGE

begin
  Float::NAN.to_i
  puts "fits"
rescue FloatDomainError
  puts "does not fit"
end
