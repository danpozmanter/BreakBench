fn write_report() ! {
	return error('disk full')
}

fn close_log() {}

fn save_report() ! {
	defer {
		close_log()
	}
	write_report()!
}

fn main() {
	save_report() or {
		println('failed')
		return
	}
	println('saved')
}
