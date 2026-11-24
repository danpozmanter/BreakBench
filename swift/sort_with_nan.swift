var xs: [Double] = [5, .nan, 3, 1, .nan, 4, 2]
xs.sort() // CONTROL! xs.sort { !$0.isNaN && ($1.isNaN || $0 < $1) }
var prev = -Double.infinity
var ordered = true
for x in xs where !x.isNaN {
    if x < prev { ordered = false }
    prev = x
}
print(ordered ? "ordered" : "unordered")
