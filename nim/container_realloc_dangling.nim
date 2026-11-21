type Item = ref object
  val: int

var v = @[Item(val: 1)]
let r = v[0]
for i in 0 ..< 1000:
  v.add Item(val: i)
let w = @[Item(val: 7)]
r.val = 99
echo w[0].val
