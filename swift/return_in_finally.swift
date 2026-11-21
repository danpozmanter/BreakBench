struct DiskFull: Error {}

func writeReport() throws {
    throw DiskFull()
}

func closeLog() {}

func saveReport() throws {
    defer { closeLog() }
    try writeReport()
}

do {
    try saveReport()
    print("saved")
} catch {
    print("failed")
}
