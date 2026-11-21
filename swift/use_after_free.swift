final class Rec {
    var value: Int
    init(_ value: Int) { self.value = value }
}

var a: Rec? = Rec(1234)
let b = a!
a = nil
let c = Rec(6666)
_ = c
print(b.value)
