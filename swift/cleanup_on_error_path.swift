import Foundation

let scratch = "/tmp/bb_scratch/export.csv"

struct InvalidRow: Error {}

func export(_ rows: [String]) throws {
    FileManager.default.createFile(atPath: scratch, contents: Data("qty\n".utf8))
    let file = FileHandle(forWritingAtPath: scratch)!
    file.seekToEndOfFile()
    for row in rows {
        guard let qty = Int(row) else { throw InvalidRow() } // BREAK!
        // CONTROL! guard let qty = Int(row) else { try? file.close(); try? FileManager.default.removeItem(atPath: scratch); throw InvalidRow() }
        file.write(Data("\(qty)\n".utf8))
    }
    try file.close()
    try FileManager.default.removeItem(atPath: scratch)
}

do {
    try export(["3", "x", "5"])
} catch {
    print("export failed")
}
