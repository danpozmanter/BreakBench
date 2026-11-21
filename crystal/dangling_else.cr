a = ARGV[0].to_i != 0
b = true
r = "unset"
if a
  r = "both" if b
else
  r = "not a"
end
puts r
