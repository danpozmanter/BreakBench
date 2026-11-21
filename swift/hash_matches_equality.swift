struct Point: Hashable {
    let x: Int
    let y: Int
    let label: String

    static func == (a: Point, b: Point) -> Bool { a.x == b.x && a.y == b.y }
}

let s: Set = [Point(x: 1, y: 2, label: "a"), Point(x: 1, y: 2, label: "b")]
print(s.count)
