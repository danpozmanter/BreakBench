import os

fn main() {
	a := os.args[1].int() != 0
	b := true
	mut r := 'unset'
	if a {
		if b {
			r = 'both'
		}
	} else {
		r = 'not a'
	}
	println(r)
}
