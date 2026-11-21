let re = try! Regex("^(a+)+$")
print(CommandLine.arguments[1].wholeMatch(of: re) != nil ? "match" : "no match")
