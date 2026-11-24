package main

import "core:fmt"
import "core:strconv"
import "core:sync/chan"
import "core:thread"

worker :: proc(answer: chan.Chan(i64)) {
	n, ok := strconv.parse_i64("x")
	if !ok { return } // CONTROL! if !ok { chan.close(answer); return }
	chan.send(answer, n)
}

main :: proc() {
	answer, _ := chan.create(chan.Chan(i64), context.allocator)
	thread.create_and_start_with_poly_data(answer, worker, self_cleanup = true)
	n, _ := chan.recv(answer) // CONTROL! n, ok := chan.recv(answer)
	fmt.println(n) // CONTROL! if ok { fmt.println(n) } else { fmt.println("failed") }
}
