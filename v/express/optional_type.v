// LEVEL: LANGUAGE

fn find() ?int {
	return none
}

fn main() {
	n := find() + 1 // REJECT!
	if _ := find() {
		println('some')
	} else {
		println('none')
	}
}
