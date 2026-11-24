import os
// CONTROL! import math.big

fn main() {
	s := os.args[1].int()
	one := u64(1)
	println(one << s) // CONTROL! println(big.integer_from_int(1).left_shift(u32(s)))
}
