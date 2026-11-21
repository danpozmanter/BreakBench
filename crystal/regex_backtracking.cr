puts(Regex.new("^(a+)+$").matches?(ARGV[0]) ? "match" : "no match")
