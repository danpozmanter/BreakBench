import os

enum Color {
	red
	green
	blue
}

fn name(c Color) string {
	return match c {
		.red { 'red' }
		.green { 'green' }
		// CONTROL! .blue { 'blue' }
	}
}

fn main() {
	colors := [Color.red, .green, .blue]
	println(name(colors[os.args[1].int()]))
}
