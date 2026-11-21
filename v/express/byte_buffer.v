// LEVEL: LANGUAGE

fn main() {
	mut buf := []u8{}
	for i in 0 .. 100000 {
		buf << u8(i)
	}
	println(buf.len)
}
