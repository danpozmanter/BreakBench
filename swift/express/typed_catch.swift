// LEVEL: LANGUAGE

enum Kind: Error { case a, b }

func work(_ a: Bool) throws(Kind) { throw a ? .a : .b }

func step(_ a: Bool) throws(Kind) {
    do {
        try work(a)
    } catch .a {
        print("caught A")
    }
}

try step(true)
do { try step(false) } catch .b { print("passed B") } catch {}
