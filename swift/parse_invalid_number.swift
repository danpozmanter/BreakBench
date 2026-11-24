// Int(_:) answers an Optional, so the number is reached only through a check.
if let n = Int(CommandLine.arguments[1]) {
    print(n + 1)
} else {
    print("invalid")
}
