fn main() {
	c := `a`
	n := int(c) + 1
	println(n)
	mut total := 0 // BREAK!
	total = c + 1 // BREAK!
	println(total) // BREAK!
}
