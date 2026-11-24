import os

fn main() {
	v := os.args[1].int()
	b := u8(v)
	println(b) // CONTROL! println(if v < 0 || v > 255 { 'out of range' } else { b.str() })
}
