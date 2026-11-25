import Foundation

let lock = "/tmp/bb_scratch/run.lock"

func checkArgs() -> Bool {
    if CommandLine.arguments.contains("--version") {
        print("1.0")
        exit(0) // BREAK!
        // CONTROL! return true
    }
    return false
}

func main() {
    FileManager.default.createFile(atPath: lock, contents: nil)
    defer { try? FileManager.default.removeItem(atPath: lock) }
    if checkArgs() { return }
    print("working")
}

main()
