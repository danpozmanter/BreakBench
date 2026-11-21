import os

fn parse_qty(s string) ?int {
	return s.int()
}

fn main() {
	qty := parse_qty(os.args[1])
	mut present := false
	if qty { present = true } // BREAK!
	// CONTROL! if qty != none { present = true }
	println(if present { 'have ${qty or { 0 }}' } else { 'missing' })
}
