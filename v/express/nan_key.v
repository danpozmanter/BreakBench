// LEVEL: LANGUAGE

import math

fn main() {
	a := math.nan()
	b := math.nan()
	mut s := map[f64]bool{}
	s[a] = true
	println(if b in s { 'found' } else { 'missing' })
}
