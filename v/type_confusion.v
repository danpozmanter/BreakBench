import os

fn add(a i64, b i64) i64 {
	return a + b
}

fn main() {
	raw := os.args[1]
	println(add(raw, 3)) // BREAK!
	println('${raw} ${add(1, 2)}')
}
