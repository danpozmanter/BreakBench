// LEVEL: LANGUAGE

enum Shape {
    case circle(Double)
    case square(Double)
}

func name(_ s: Shape) -> String {
    switch s {
    case .circle: return "circle"
    case .square: return "square"
    }
}

func bad(_ s: Shape) -> String { switch s { case .circle: return "circle" } } // REJECT!

print(name(.circle(1)))
