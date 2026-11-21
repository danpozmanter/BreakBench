// LEVEL: LANGUAGE

struct Bad: Error {}

func use(_ fail: Bool) throws {
    defer { print("released") }
    if fail { throw Bad() }
}

try? use(false)
try? use(true)
