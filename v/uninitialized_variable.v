import os

fn main() {
	n := os.args[1].int()
	mut x int // BREAK!
	// CONTROL! mut x := 0
	if n > 5 {
		x = 10
	}
	println(x)
}
