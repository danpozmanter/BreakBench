fn total(a i64, b i64) i64 {
	return // CONTROL! return a + b
	a + b // BREAK!
}

fn main() {
	println(total(2, 3))
}
