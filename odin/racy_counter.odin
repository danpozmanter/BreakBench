package main

import "core:fmt"
import "core:thread"

worker :: proc(counter: ^int) {
	for _ in 0 ..< 1_000_000 do counter^ += 1
}

main :: proc() {
	counter := 0
	threads: [8]^thread.Thread
	for &t in threads do t = thread.create_and_start_with_poly_data(&counter, worker)
	for t in threads do thread.join(t)
	fmt.println(counter)
}
