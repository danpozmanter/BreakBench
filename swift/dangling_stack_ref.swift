final class Box {
    var value: Int
    init(_ value: Int) { self.value = value }
}

func make() -> Box {
    let local = Box(4242)
    return local
}

func clobber() -> Int {
    let junk = [Int](repeating: 7, count: 64)
    return junk[63]
}

let r = make()
_ = clobber()
print(r.value)
