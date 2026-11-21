class Shape {
    func describe() -> String { "shape" }
}

final class Circle: Shape {
    override func describe() -> String { "circle" }
    override func descibe() -> String { "circle" } // BREAK!
}

let s: Shape = Circle()
print(s.describe())
