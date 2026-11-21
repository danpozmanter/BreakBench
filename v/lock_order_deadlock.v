import sync
import time

fn transfer(mut first sync.Mutex, mut second sync.Mutex) {
	first.lock()
	time.sleep(100 * time.millisecond)
	second.lock()
	second.unlock()
	first.unlock()
}

fn main() {
	mut a := sync.new_mutex()
	mut b := sync.new_mutex()
	t1 := spawn transfer(mut a, mut b)
	t2 := spawn transfer(mut b, mut a)
	t1.wait()
	t2.wait()
	println('finished')
}
