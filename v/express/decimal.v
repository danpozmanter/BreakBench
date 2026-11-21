// LEVEL: STD

import math.decimal

fn main() {
	a := decimal.from_string('0.1')!
	b := decimal.from_string('0.2')!
	c := decimal.from_string('0.3')!
	println(if a + b == c { 'equal' } else { 'not equal' })
}
