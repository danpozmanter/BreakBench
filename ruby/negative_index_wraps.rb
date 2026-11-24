readings = [10, 20, 30]
i = ARGV[0].to_i
puts readings[i] - readings[i - 1] # CONTROL! puts(i > 0 ? readings[i] - readings[i - 1] : "no previous")
