func size(_ n: Int) -> String {
    var label = "small"
    if n > 5; { // CONTROL! if n > 5 {
        label = "big"
    }
    return label
}

print(size(Int(CommandLine.arguments[1])!))
print(size(Int(CommandLine.arguments[2])!))
