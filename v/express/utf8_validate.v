// LEVEL: STD

import encoding.utf8

fn main() {
	s := [u8(0x61), 0xFF].bytestr()
	println(if utf8.validate_str(s) { 'valid' } else { 'invalid' })
}
