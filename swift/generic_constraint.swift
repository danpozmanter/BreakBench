struct Point {
    let x: Int
    let y: Int
}

var xs = [3, 1, 2]
xs.sort()
var ps = [Point(x: 1, y: 2)]; ps.sort() // BREAK!
print(xs[0])
