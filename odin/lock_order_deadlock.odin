package main

import "core:fmt"
import "core:sync"
import "core:thread"
import "core:time"

Pair :: struct {
	first, second: ^sync.Mutex,
}

transfer :: proc(p: Pair) {
	sync.mutex_lock(p.first)
	defer sync.mutex_unlock(p.first)
	time.sleep(100 * time.Millisecond)
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
