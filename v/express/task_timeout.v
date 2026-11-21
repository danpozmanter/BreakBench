// LEVEL: LANGUAGE

import time

fn slow(ch chan int) {
	time.sleep(5 * time.second)
	ch <- 1
}

fn main() {
	ch := chan int{}
	spawn slow(ch)
	select {
		_ := <-ch {
			println('done')
		}
		100 * time.millisecond {
			println('timed out')
		}
	}
	exit(0)
}
