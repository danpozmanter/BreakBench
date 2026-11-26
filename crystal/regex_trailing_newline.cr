puts(Regex.new("^[a-z]+$").matches?(ARGV[0]) ? "accepted" : "rejected") # CONTROL! puts(Regex.new("\\A[a-z]+\\z").matches?(ARGV[0]) ? "accepted" : "rejected")
