import os

fn main() {
	mut x := os.args[1].int()
	mut label := 'not one'
	if x = 1 { label = 'one' } // BREAK!
	// CONTROL! if x == 1 { label = 'one' }
	x += 0
	println(label)
}
