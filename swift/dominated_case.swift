enum Shape {
    case circle, square
}

func describe(_ s: Shape) -> String {
    switch s {
    case _: return "other"
    case .circle: return "circle"
    }
}

_ = Shape.square
print(describe(.circle))
