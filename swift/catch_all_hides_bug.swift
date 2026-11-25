struct InvalidOrder: Error {}

func parseOrder(_ line: String) throws -> Int {
    let parts = line.split(separator: ",")
    guard let qty = Int(parts[2]) else { throw InvalidOrder() } // BREAK!
    // CONTROL! guard let qty = Int(parts[1]) else { throw InvalidOrder() }
    return qty
}

do {
    print(try parseOrder("widget,5"))
} catch {
    print("invalid order")
}
