// LEVEL: LANGUAGE

struct Boom: Error {}

let worker = Task { () throws -> Int in throw Boom() }
do { _ = try await worker.value } catch { print("worker crashed") }
