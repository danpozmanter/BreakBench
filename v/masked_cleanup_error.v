struct Report {}

fn (r Report) write(text string) ! {
	return error('disk full')
}

fn (r Report) close() ! {
	return error('close failed')
}

fn save() ! {
	report := Report{}
	defer {
		report.close() or {}
	}
	report.write('totals')!
}

fn main() {
	save() or { println(err.msg()) }
}
