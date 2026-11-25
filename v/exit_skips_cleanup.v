import os

const lock_path = '/tmp/bb_scratch/run.lock'

fn check_args() bool {
	if '--version' in os.args {
		println('1.0')
		exit(0) // BREAK!
		// CONTROL! return true
	}
	return false
}

fn main() {
	os.write_file(lock_path, '') or { panic(err) }
	defer {
		os.rm(lock_path) or {}
	}
	if check_args() {
		return
	}
	println('working')
}
