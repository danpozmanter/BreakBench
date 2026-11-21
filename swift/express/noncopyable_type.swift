// LEVEL: LANGUAGE

struct Handle: ~Copyable {
    let fd: Int
}

func run() {
    let h = Handle(fd: 3)
    let copied = copy h // REJECT!
    let moved = h
    print(moved.fd)
}

run()
