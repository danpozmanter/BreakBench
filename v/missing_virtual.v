struct Shape {}

fn (s Shape) area() int {
	return 0
}

fn (s Shape) describe() string {
	return 'area ${s.area()}'
}

struct Square {
	Shape
}

fn (q Square) area() int {
	return 4
}

// CONTROL! fn (q Square) describe() string { return 'area ${q.area()}' }

fn main() {
	println(Square{}.describe())
}
