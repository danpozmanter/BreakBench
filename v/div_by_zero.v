import os

fn main() {
	d := os.args[1].int()
	println(100 / d)
}
