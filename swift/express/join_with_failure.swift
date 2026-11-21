// LEVEL: LANGUAGE

struct BadInput: Error, CustomStringConvertible { var description: String { "bad input" } }

let task = Task { () throws -> Int in throw BadInput() }
do {
    print(try await task.value)
} catch {
    print("worker failed: \(error)")
}
