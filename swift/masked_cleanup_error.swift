struct DiskError: Error, CustomStringConvertible {
    let description: String
}

final class Report {
    func write(_ text: String) throws { throw DiskError(description: "disk full") }
    func close() throws { throw DiskError(description: "close failed") }
}

func save() throws {
    let report = Report()
    defer { try? report.close() }
    try report.write("totals")
}

do {
    try save()
} catch {
    print(error)
}
