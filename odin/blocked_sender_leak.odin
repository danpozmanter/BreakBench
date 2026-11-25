package main

import "core:fmt"
import "core:sync/chan"
import "core:thread"

worker :: proc(answers: chan.Chan(int)) {
	chan.send(answers, 42)
}

first_answer :: proc(workers: ^[2]^thread.Thread) -> int {
	answers, _ := chan.create(chan.Chan(int), context.allocator) // BREAK!
	// CONTROL! answers, _ := chan.create(chan.Chan(int), 2, context.allocator)
	for &w in workers {
		w = thread.create_and_start_with_poly_data(answers, worker)
	}
	answer, _ := chan.recv(answers)
	return answer
}

main :: proc() {
	workers: [2]^thread.Thread
	fmt.println(first_answer(&workers))
	thread.join_multiple(..workers[:])
	fmt.println("done")
}
