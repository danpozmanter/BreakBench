// LEVEL: LANGUAGE

fn work() !int {
	return error('bad input')
}

fn main() {
	t := spawn work()
	t.wait() or { println('worker failed: ${err}') }
}
