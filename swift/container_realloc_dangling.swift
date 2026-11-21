struct Item { var val: Int }

var v = [Item(val: 1)]
var r = v[0]
for i in 0..<1000 {
    v.append(Item(val: i))
}
let w = [Item(val: 7)]
r.val = 99
print(w[0].val)
