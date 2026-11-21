// LEVEL: LANGUAGE

enum Color {
	red
	green
	blue
}

fn name(c Color) string {
	return match c {
		.red { 'red' }
		.green { 'green' }
		.blue { 'blue' }
	}
}

fn main() {
	c := Color.green
	println(name(7)) // REJECT!
	println(name(c))
}
