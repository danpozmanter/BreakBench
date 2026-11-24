import os

fn main() {
	n := os.args[1].i64()
	// CONTROL! if n > 1 << 30 {
		// CONTROL! println('too large')
		// CONTROL! return
	// CONTROL! }
	mut buf := []u8{len: int(n)}
	buf[buf.len - 1] = 1
	println(buf.len)
}
