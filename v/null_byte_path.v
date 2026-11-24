import os

fn main() {
	os.mkdir_all('/tmp/bb_files') or {}
	os.write_file('/tmp/bb_files/report.txt', 'secret\n') or { panic(err) }

	name := 'report.txt\0.png'
	// CONTROL! if name.contains('\0') {
		// CONTROL! println('rejected')
		// CONTROL! return
	// CONTROL! }
	if !name.ends_with('.png') {
		println('rejected')
		return
	}
	text := os.read_file('/tmp/bb_files/' + name) or {
		println('rejected')
		return
	}
	print(text)
}
