struct BadNumber: Error {}

func sum(_ items: [String]) throws -> Int {
    var total = 0
    for item in items {
        guard let n = Int(item) else { throw BadNumber() }
        total += n
    }
    return total
}

let items = Array(CommandLine.arguments.dropFirst())
let worker = Task { try sum(items) }
let total = try await worker.value // CONTROL! if let total = try? await worker.value { print("total \(total)") } else { print("failed") }
print("total \(total)") // BREAK!
