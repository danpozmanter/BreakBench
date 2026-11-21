fn make() &int {
	local := 4242
	return &local
}

fn clobber() int {
	junk := [64]int{init: 7}
	return junk[63]
}

fn main() {
	r := make()
	clobber()
	println(*r)
}
