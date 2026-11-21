// LEVEL: STD

import time
import sync.stdatomic

fn spin(flag &u64) {
	for stdatomic.load_u64(flag) == 0 {
		time.sleep(time.millisecond)
	}
}

fn main() {
	flag := u64(0)
	t := spawn spin(&flag)
	time.sleep(20 * time.millisecond)
	stdatomic.store_u64(&flag, 1)
	t.wait()
	println('stopped')
}
