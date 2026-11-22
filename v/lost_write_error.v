import os

fn main() {
	mut f := os.create('/dev/full')!
	f.write_string('data\n')!
	f.close()
	println('saved')
}
