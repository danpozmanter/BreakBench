fn main() {
	big := i64(42)
	small := i32(big)
	mut wrong := i32(0) // BREAK!
	wrong = big // BREAK!
	println(wrong) // BREAK!
	println(small)
}
