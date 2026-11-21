type Rec = ref object
  value: int

var a = Rec(value: 0)
a = nil
a = nil
let x = Rec(value: 1)
let y = Rec(value: 2)
echo x.value
