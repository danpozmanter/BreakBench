// LEVEL: LANGUAGE

fn main() {
	c := `a`
	n := int(c) + 1
	println(n)
	mut total := 0 // REJECT!
	total = c + 1 // REJECT!
	println(total) // REJECT!
}
