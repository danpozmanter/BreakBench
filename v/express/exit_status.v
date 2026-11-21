// LEVEL: STD

import os

fn main() {
	mut p := os.new_process('/bin/false')
	p.wait()
	println(p.code)
	p.close()
}
