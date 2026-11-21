import os

fn walk(n i64) i64 {
	if n == 0 {
		return 0
	}
	return (walk(n - 1) * 31 + n) % 1_000_000_007
}

fn main() {
	println(walk(os.args[1].i64()))
}
