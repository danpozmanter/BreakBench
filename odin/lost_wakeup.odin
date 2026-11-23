package main

import "core:fmt"
import "core:sync"
import "core:thread"

Signal :: struct {
	lock:  sync.Mutex,
	woken: sync.Cond,
}

worker :: proc(signal: ^Signal) {
	sync.mutex_lock(&signal.lock)
	sync.cond_wait(&signal.woken, &signal.lock)
	sync.mutex_unlock(&signal.lock)
	fmt.println("done")
}

main :: proc() {
	signal: Signal
	sync.mutex_lock(&signal.lock)
	sync.cond_signal(&signal.woken)
	sync.mutex_unlock(&signal.lock)
	t := thread.create_and_start_with_poly_data(&signal, worker)
	thread.join(t)
}
