// LEVEL: LANGUAGE

let task = Task {
    while !Task.isCancelled {
        try? await Task.sleep(for: .milliseconds(1))
    }
}
try? await Task.sleep(for: .milliseconds(20))
task.cancel()
await task.value
print("stopped")
