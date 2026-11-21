// LEVEL: LANGUAGE

fn last(t [4]int) int {
	return t[3]
}

fn main() {
	println(last([10, 20, 30, 40]!))
	println(last([10, 20, 30]!)) // REJECT!
}
