// LEVEL: LANGUAGE

let task = Task {
    try await Task.sleep(for: .milliseconds(50))
    return 7
}
print("started")
print(try await task.value)
