fn main() {
	mut passes := 0
	mut i := u8(0) // BREAK!
	// CONTROL! mut i := u16(0)
	for i < 300 {
		passes++
		i++
	}
	println(passes)
}
