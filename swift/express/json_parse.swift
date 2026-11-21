// LEVEL: STD

import Foundation

struct Config: Decodable {
    let port: Int
    let debug: Bool
}

let good = try JSONDecoder().decode(Config.self, from: Data(#"{"port": 8080, "debug": true}"#.utf8))
let bad = try? JSONDecoder().decode(Config.self, from: Data("{port: 8080}".utf8))
print(good.port, bad == nil ? "invalid" : "valid")
