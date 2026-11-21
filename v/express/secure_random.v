// LEVEL: STD

import crypto.rand

fn main() {
	buf := rand.bytes(16) or { panic(err) }
	println(buf.hex())
}
