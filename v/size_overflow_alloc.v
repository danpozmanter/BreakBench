import os

fn main() {
	count := os.args[1].i64()
	// CONTROL! if count > 1 << 27 {
		// CONTROL! println('too large')
		// CONTROL! return
	// CONTROL! }
	size := count * 8
	mut records := []u8{len: int(size)}
	records[8] = 99
	println('stored')
}
