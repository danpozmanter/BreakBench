// LEVEL: LANGUAGE

import time

fn slow() int {
	time.sleep(50 * time.millisecond)
	return 7
}

fn main() {
	t := spawn slow()
	println('started')
	println(t.wait())
}
