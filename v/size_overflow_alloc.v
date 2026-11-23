import os

fn main() {
	count := os.args[1].i64()
	size := count * 8
	mut records := []u8{len: int(size)}
	records[8] = 99
	println('stored')
}
