// LEVEL: LANGUAGE

fn find(id int) ?int {
	if id == 1 {
		return 36
	}
	return none
}

fn main() {
	println('before')
	println(find(2)? + 1)
}
