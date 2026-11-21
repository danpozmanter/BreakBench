final class Rec {
    var value: Int
    init(_ value: Int) { self.value = value }
}

var a: Rec? = Rec(0)
a = nil
a = nil
let x = Rec(1)
let y = Rec(2)
_ = y
print(x.value)
