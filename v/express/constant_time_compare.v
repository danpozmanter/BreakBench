// LEVEL: STD

import crypto.internal.subtle

fn main() {
	a := []u8{len: 16, init: 7}
	b := []u8{len: 16, init: 7}
	println(if subtle.constant_time_compare(a, b) == 1 { 'equal' } else { 'different' })
}
