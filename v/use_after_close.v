import os

fn main() {
	mut f := os.create('/tmp/bb_close.txt')!
	f.write_string('a')!
	f.close()
	f.write_string('b')! // BREAK!
	println('ok')
}
