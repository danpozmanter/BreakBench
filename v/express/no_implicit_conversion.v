// LEVEL: LANGUAGE

fn main() {
	big := i64(42)
	small := i32(big)
	mut wrong := i32(0) // REJECT!
	wrong = big // REJECT!
	println(wrong) // REJECT!
	println(small)
}
