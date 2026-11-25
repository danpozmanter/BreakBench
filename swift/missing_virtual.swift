class Shape {
    func area() -> Int { 0 }
    func describe() -> String { "area \(area())" }
}

final class Square: Shape {
    func area() -> Int { 4 } // CONTROL! override func area() -> Int { 4 }
}

print(Square().describe())
