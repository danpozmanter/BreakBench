// LEVEL: LANGUAGE

fn main() {
	ok := u8(100)
	too_big := u8(300) // REJECT!
	println(too_big) // REJECT!
	println(ok)
}
