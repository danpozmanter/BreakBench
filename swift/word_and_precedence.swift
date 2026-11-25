let ready = CommandLine.arguments[1] == "yes"
let approved = CommandLine.arguments[2] == "yes"
let ok = ready && approved
print(ok ? "go" : "wait")
