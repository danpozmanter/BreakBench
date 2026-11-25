import Foundation

let lock = "/tmp/bb_scratch/reader.lock"

final class Rows: Sequence, IteratorProtocol {
    var lines = ["alpha", "beta", "gamma"][...]

    init() { FileManager.default.createFile(atPath: lock, contents: nil) }

    deinit { try? FileManager.default.removeItem(atPath: lock) }

    func next() -> String? { lines.popFirst() }
}

func main() {
    for line in Rows() {
        print(line)
        break
    }
}

main()
