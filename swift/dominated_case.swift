enum Shape {
    case circle, square
}

func describe(_ s: Shape) -> String {
    switch s {
    case _: return "other" // CONTROL! case .circle: return "circle"
    case .circle: return "circle" // CONTROL! case _: return "other"
    }
}

_ = Shape.square
print(describe(.circle))
