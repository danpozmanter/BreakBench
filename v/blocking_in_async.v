import time

fn job() {
	time.sleep(500 * time.millisecond)
}

fn main() {
	sw := time.new_stopwatch()
	a := spawn job()
	b := spawn job()
	a.wait()
	b.wait()
	println(if sw.elapsed() < 800 * time.millisecond { 'concurrent' } else { 'serial' })
}
