import os

fn main() {
	os.exec(['sh', '-c', 'exit 3'])
	println('backed up')
}
