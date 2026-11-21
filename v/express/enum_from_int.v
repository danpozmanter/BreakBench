// LEVEL: LANGUAGE

import os

enum Color {
	red
	green
	blue
}

fn main() {
	println('before')
	c := Color.from(os.args[1].int()) or {
		println('invalid')
		return
	}
	println(c)
}
