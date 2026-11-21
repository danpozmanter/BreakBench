// LEVEL: LANGUAGE

final class Config {
    let name: String

    init(name: String) { self.name = name }
}

let c = Config(name: "app")
let missing: Config = nil // REJECT!
print(c.name)
