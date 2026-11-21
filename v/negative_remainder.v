import os

fn is_odd(n i64) bool {
	return n % 2 == 1
}

fn main() {
	println(if is_odd(os.args[1].i64()) { 'odd' } else { 'even' })
}
