import os

fn main() {
	claimed := os.args[1].int()
	mut buf := []u8{len: 64}
	copy(mut buf[2..], 'SECRET-KEY-0042'.bytes())
	copy(mut buf, 'hi'.bytes())
	payload := buf[..2]
	// CONTROL! if claimed > payload.len { println('invalid') return }
	reply := payload[..claimed]
	println(reply.bytestr())
}
