fn show(f f64) {
	println(f)
}

fn main() {
	n := i64(7)
	show(f64(n))
	show(n) // BREAK!
}
