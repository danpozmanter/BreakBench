// LEVEL: STD

import os
import time

fn main() {
	mut p := os.new_process(os.find_abs_path_of_executable('sleep')!)
	p.set_args(['10'])
	p.run()
	time.sleep(100 * time.millisecond)
	p.signal_kill()
	p.wait()
	println(if p.code != 0 { 'killed' } else { 'finished' })
}
