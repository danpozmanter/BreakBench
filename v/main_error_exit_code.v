import os

fn main() {
	text := os.read_file('/nonexistent/bb.conf') or {
		eprintln('config missing: ${err}')
		return // BREAK!
		// CONTROL! exit(1)
	}
	println(text.len)
}
