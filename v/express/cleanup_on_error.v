// LEVEL: LANGUAGE

fn use(fail bool) ! {
	defer {
		println('released')
	}
	if fail {
		return error('bad')
	}
}

fn main() {
	use(false) or {}
	use(true) or {}
}
