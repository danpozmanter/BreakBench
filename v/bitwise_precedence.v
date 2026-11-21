import os

fn main() {
	x := os.args[1].int()
	even := x & 1 == 0 // BREAK!
	// CONTROL! even := (x & 1) == 0
	println(if even { 'even' } else { 'odd' })
}
