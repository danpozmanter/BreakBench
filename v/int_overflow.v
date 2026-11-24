import os

fn main() {
	n := os.args[1].i64()
	println(n + 1) // CONTROL! println(u64(n) + 1)
}
