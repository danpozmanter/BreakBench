// LEVEL: LANGUAGE

import Foundation

let result = await withTaskGroup(of: String.self) { group in
    group.addTask {
        try? await Task.sleep(for: .seconds(5))
        return "done"
    }
    group.addTask {
        try? await Task.sleep(for: .milliseconds(100))
        return "timed out"
    }
    let first = await group.next()!
    group.cancelAll()
    return first
}
print(result)
