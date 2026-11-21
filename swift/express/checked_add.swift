// LEVEL: STD

let n = Int64(CommandLine.arguments[1])!
print(n.addingReportingOverflow(1).overflow ? "overflow" : "ok")
