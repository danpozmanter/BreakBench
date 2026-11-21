struct Shape {}

fn (s Shape) describe() string {
	return 'shape'
}

struct Circle {
	Shape
}

fn (c Circle) descibe() string { // CONTROL! fn (c Circle) describe() string {
	return 'circle'
}

fn main() {
	c := Circle{}
	println(c.describe())
}
