import os

fn main() {
	n := os.args[1].int()
	println(n + 1)
}
