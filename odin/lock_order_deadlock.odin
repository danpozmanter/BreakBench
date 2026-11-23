package main

import "core:fmt"
import "core:sync"
import "core:thread"

Pair :: struct {
	first, second: ^sync.Mutex,
}

gate_lock: sync.Mutex
arrivals: int

rendezvous :: proc() {
	sync.mutex_lock(&gate_lock); arrivals += 1; sync.mutex_unlock(&gate_lock)
	for {
		sync.mutex_lock(&gate_lock); open := arrivals == 2; sync.mutex_unlock(&gate_lock)
		if open do break
	}
}

transfer :: proc(p: Pair) {
	sync.mutex_lock(p.first)
	defer sync.mutex_unlock(p.first)
	rendezvous()
	sync.mutex_lock(p.second)
	defer sync.mutex_unlock(p.second)
}

main :: proc() {
	a, b: sync.Mutex
	t1 := thread.create_and_start_with_poly_data(Pair{&a, &b}, transfer)
	t2 := thread.create_and_start_with_poly_data(Pair{&b, &a}, transfer)
	thread.join(t1)
	thread.join(t2)
	fmt.println("finished")
}
