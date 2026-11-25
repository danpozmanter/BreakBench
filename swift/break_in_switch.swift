func totalUntilStop(_ codes: [String]) -> Int {
    var total = 0
    for c in codes {
        let code = Int(c)!
        switch code {
        case 0:
            break // CONTROL! return total
        default:
            total += code
        }
    }
    return total
}

print(totalUntilStop(Array(CommandLine.arguments.dropFirst())))
