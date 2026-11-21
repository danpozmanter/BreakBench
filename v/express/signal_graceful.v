// LEVEL: STD

import os
import time

fn main() {
	os.signal_opt(.term, fn (_ os.Signal) {
		println('cleaned up')
		exit(0)
	}) or { panic(err) }
	mut p := os.new_process('/bin/kill')
	p.set_args(['-TERM', os.getpid().str()])
	p.wait()
	time.sleep(5 * time.second)
}
