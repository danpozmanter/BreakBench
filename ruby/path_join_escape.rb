joined = File.join("/srv/app/uploads", ARGV[0])
puts(joined.start_with?("/srv/app/uploads/") ? "inside" : "escaped")
