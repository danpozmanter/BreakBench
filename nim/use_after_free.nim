type Rec = ref object
  value: int

var a = Rec(value: 1234)
let b = a
a = nil
let c = Rec(value: 6666)
echo b.value
