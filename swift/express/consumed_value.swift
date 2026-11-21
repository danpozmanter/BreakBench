// LEVEL: LANGUAGE

struct Handle: ~Copyable {
    let name: String

    consuming func close() -> String { name }
}

func run() {
    let h = Handle(name: "log")
    let name = h.close()
    _ = h.name // REJECT!
    print(name == "log" ? "closed" : "open")
}

run()
