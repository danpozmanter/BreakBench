joined = Path["/srv/app/uploads"].join(ARGV[0]).to_s
puts(joined.starts_with?("/srv/app/uploads/") ? "inside" : "escaped")
