fn main() {
	mut session := []u8{len: 64}
	for i, c in 'SECRET-TOKEN'.bytes() {
		session[32 + i] = c
	}
	session = []u8{}
	_ = session
	reply := []u8{len: 64}
	println(reply[32..44].hex())
}
