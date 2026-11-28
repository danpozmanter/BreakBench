stock = {"apple" => 3, "plum" => 4}
name = ARGV[0]
n = stock[name]?; puts(n ? n + 5 : "unknown")
