// LEVEL: LANGUAGE

final class Rec {
    let id: Int
    let data: [UInt8]

    init(id: Int) {
        self.id = id
        data = [UInt8](repeating: 0, count: 1016)
    }
}

var last = Rec(id: 0)
for i in 0..<4_000_000 {
    last = Rec(id: i)
}
print(last.id)
