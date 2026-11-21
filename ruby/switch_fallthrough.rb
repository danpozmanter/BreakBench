n = ARGV[0].to_i
name =
  case n
  when 1 then "one"
  when 2 then "two"
  else "other"
  end
puts name
