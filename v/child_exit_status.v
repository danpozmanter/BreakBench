import os

fn main() {
	os.exec(['sh', '-c', 'exit 3']) // CONTROL! res := os.exec(['sh', '-c', 'exit 3'])
	println('backed up') // CONTROL! println(if res.exit_code != 0 { 'backup failed' } else { 'backed up' })
}
