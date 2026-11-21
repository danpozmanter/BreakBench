// LEVEL: LANGUAGE

struct Boom: Error {}

func work() throws {
    defer { print("cleanup") }
    throw Boom()
}

do { try work() } catch { print("recovered") }
