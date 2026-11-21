import os

fn main() {
	x := os.args[1].int()
	inside := 1 < x < 3 // BREAK!
	// CONTROL! inside := 1 < x && x < 3
	println(if inside { 'inside' } else { 'outside' })
}
