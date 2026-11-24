import os

fn walk(n i64) i64 {
	if n == 0 {
		return 0
	}
	return (walk(n - 1) * 31 + n) % 1_000_000_007
}

fn main() {
	println(walk(os.args[1].i64())) // BREAK!
	// CONTROL! n := os.args[1].i64()
	// CONTROL! mut acc := i64(0)
	// CONTROL! for i in i64(1) .. n + 1 {
		// CONTROL! acc = (acc * 31 + i) % 1_000_000_007
	// CONTROL! }
	// CONTROL! println(acc)
}
