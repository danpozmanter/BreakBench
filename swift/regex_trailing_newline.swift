let re = try! Regex("^[a-z]+$")
print(CommandLine.arguments[1].wholeMatch(of: re) != nil ? "accepted" : "rejected")
