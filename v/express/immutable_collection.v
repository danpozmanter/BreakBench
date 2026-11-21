// LEVEL: LANGUAGE

fn main() {
	xs := [1, 2, 3]
	xs << 4 // REJECT!
	println(xs.len)
}
