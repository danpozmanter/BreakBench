enum Value {
    case int(Int)
    case text(String)
}

let v = Value.int(42)
let Value.text(s) = v // BREAK!
// CONTROL! guard case let .text(s) = v else { fatalError("not text") }
print(s.count)
