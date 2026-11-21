import os

fn main() {
	n := os.args[1].int()
	os.write_file('/tmp/bb_fd.txt', 'x')!
	for _ in 0 .. n {
		mut f := os.open('/tmp/bb_fd.txt')!
		mut b := []u8{len: 1}
		f.read(mut b)!
	}
	println('done')
}
