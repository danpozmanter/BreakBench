import Foundation

func main() throws {
    let text: String
    do {
        text = try String(contentsOfFile: "/nonexistent/bb.conf", encoding: .utf8)
    } catch {
        FileHandle.standardError.write(Data("config missing: \(error)\n".utf8))
        return // BREAK!
        // CONTROL! throw error
    }
    print(text.count)
}

try main()
