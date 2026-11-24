fn find(id int) ?int {
	if id == 1 {
		return 36
	}
	return none
}

fn main() {
	println('before')
	println(find(2)? + 1) // CONTROL! if a := find(2) { println(a + 1) } else { println('missing') }
}
