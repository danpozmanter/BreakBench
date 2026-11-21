// LEVEL: STD

package main

import "core:fmt"
import "core:sync"
import "core:thread"

lock: sync.Mutex
counter: int

work :: proc() {
	for _ in 0 ..< 100_000 {
		sync.mutex_lock(&lock)
		counter += 1
		sync.mutex_unlock(&lock)
	}
}

main :: proc() {
	a := thread.create_and_start(work)
	b := thread.create_and_start(work)
	thread.join(a)
	thread.join(b)
	fmt.println(counter)
}
