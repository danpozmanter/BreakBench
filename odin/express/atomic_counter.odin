// LEVEL: STD

package main

import "core:fmt"
import "core:sync"
import "core:thread"

counter: int

work :: proc() {
	for _ in 0 ..< 100_000 {
		sync.atomic_add(&counter, 1)
	}
}

main :: proc() {
	a := thread.create_and_start(work)
	b := thread.create_and_start(work)
	thread.join(a)
	thread.join(b)
	fmt.println(sync.atomic_load(&counter))
}
