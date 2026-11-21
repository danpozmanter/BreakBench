// LEVEL: STD

import bitfield

fn main() {
	mut b := bitfield.new(1024)
	b.set_bit(1000)
	println('${b.get_bit(1000) == 1} ${b.get_bit(999) == 1}')
}
