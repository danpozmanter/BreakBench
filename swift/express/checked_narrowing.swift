// LEVEL: STD

let v = Int(CommandLine.arguments[1])!
print(UInt8(exactly: v) == nil ? "does not fit" : "fits")
