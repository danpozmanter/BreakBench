import os
import strings

fn main() {
	n := os.args[1].int()
	mut heads := [][]u8{}
	mut prefixes := []string{}
	for i in 0 .. n {
		buf := []u8{len: 32768, init: u8(i)}
		heads << buf[..16]
		big := strings.repeat(u8(97 + i % 26), 32768)
		prefixes << big[..16]
	}
	println(heads.len)
}
