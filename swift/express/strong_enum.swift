// LEVEL: LANGUAGE

enum Color {
    case red, green, blue
}

func name(_ c: Color) -> String {
    switch c {
    case .red: return "red"
    case .green: return "green"
    case .blue: return "blue"
    }
}

let c = Color.green
print(name(7)) // REJECT!
print(name(c))
