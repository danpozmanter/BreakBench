// LEVEL: LANGUAGE

struct Point {
mut:
	x int
}

fn main() {
	a := Point{
		x: 1
	}
	mut b := a
	b.x = 9
	println(a.x)
}
