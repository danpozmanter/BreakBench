import os

fn save(path string) ! {
	os.write_file(path, 'data')!
}

fn main() {
	save('/dev/null/out.txt') // BREAK!
	// CONTROL! save('/dev/null/out.txt') or {}
	println('saved')
}
