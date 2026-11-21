// LEVEL: LANGUAGE

struct Circle {
	r f64
}

struct Square {
	side f64
}

type Shape = Circle | Square

fn name(s Shape) string {
	return match s {
		Circle { 'circle' }
		Square { 'square' }
	}
}

fn bad(s Shape) string { // REJECT!
	return match s { // REJECT!
		Circle { 'circle' } // REJECT!
	} // REJECT!
} // REJECT!

fn main() {
	println(name(Circle{
		r: 1
	}))
}
