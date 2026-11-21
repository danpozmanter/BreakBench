// LEVEL: LANGUAGE

fn compare(a string, b string) int {
	return a.compare(b)
}

fn main() {
	if compare('x', 'x') == 0 {
		println('same')
	}
	if compare('x', 'x') { println('different') } // REJECT!
}
