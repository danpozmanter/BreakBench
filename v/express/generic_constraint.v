// LEVEL: LANGUAGE

struct Point {
	x int
	y int
}

fn main() {
	mut xs := [3, 1, 2]
	xs.sort()
	mut ps := [Point{ x: 1, y: 2 }] // REJECT!
	ps.sort() // REJECT!
	println(xs[0])
}
