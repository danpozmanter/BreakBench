import os

fn main() {
	d := os.args[1].int()
	println(100 / d) // CONTROL! if d == 0 { println("cannot divide") } else { println(100 / d) }
}
