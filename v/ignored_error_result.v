import os

fn save(path string) ! {
	os.write_file(path, 'data')!
}

fn main() {
	save('/nonexistent/dir/out.txt') // BREAK!
	// CONTROL! save('/nonexistent/dir/out.txt') or {}
	println('saved')
}
