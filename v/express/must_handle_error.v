// LEVEL: LANGUAGE

fn save() ! {
	return error('disk full')
}

fn main() {
	save() // REJECT!
	save() or { println('handled') }
}
