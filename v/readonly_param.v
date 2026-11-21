fn count(xs []int) int {
	xs[0] = 9 // BREAK!
	return xs.len
}

fn main() {
	println(count([1, 2, 3]))
}
