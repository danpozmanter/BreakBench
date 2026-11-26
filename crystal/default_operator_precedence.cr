def cached_count(name : String) : Int32?
  name == "ada" ? 4 : nil
end

cached = cached_count(ARGV[0])
count = cached || 0 + 1 # CONTROL! count = (cached || 0) + 1
puts count
