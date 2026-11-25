import os

fn main() {
	a := os.args[1].i64()
	b := os.args[2].i64()
	println(a / b) // CONTROL! println((u64(0) - u64(a)) / (u64(0) - u64(b)))
}
