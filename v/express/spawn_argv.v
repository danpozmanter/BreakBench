// LEVEL: STD

import os

fn main() {
	mut p := os.new_process('/bin/echo')
	p.set_args(['hi; touch /tmp/bb_x'])
	p.set_redirect_stdio()
	p.wait()
	print(p.stdout_slurp())
	p.close()
}
