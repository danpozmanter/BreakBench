import os

fn main() {
	n := os.args[1].i64()
	mut buf := []u8{len: int(n)}
	buf[buf.len - 1] = 1
	println(buf.len)
}
