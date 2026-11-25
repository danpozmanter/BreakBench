def size(n)
  label = "small"
  if n > 5; # CONTROL! if n > 5
    label = "big"
  end
  label
end

puts size(ARGV[0].to_i)
puts size(ARGV[1].to_i)
