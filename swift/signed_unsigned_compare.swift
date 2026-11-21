let xs = [1, 2, 3]
let i = Int(CommandLine.arguments[1])!
if i < xs.count {
    print("less")
} else {
    print("not less")
}
