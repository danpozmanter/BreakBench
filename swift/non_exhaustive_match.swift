enum Color { case red, green, blue }

func name(_ c: Color) -> String {
    switch c {
    case .red: return "red"
    case .green: return "green"
    // CONTROL! case .blue: return "blue"
    }
}

let colors: [Color] = [.red, .green, .blue]
print(name(colors[Int(CommandLine.arguments[1])!]))
