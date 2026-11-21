package main

import "core:fmt"
import "core:os"
import "core:strconv"
import "core:sync/chan"
import "core:thread"

Job :: struct {
	out:  chan.Chan([]i64),
	seed: i64,
}

answer :: proc(job: Job) {
	buf := make([]i64, 8192)
	for &x in buf do x = job.seed
	chan.send(job.out, buf)
}

main :: proc() {
	rounds, _ := strconv.parse_i64(os.args[1])
	for i in 0 ..< rounds {
		out, _ := chan.create(chan.Chan([]i64), context.allocator)
		thread.create_and_start_with_poly_data(Job{out, i}, answer, self_cleanup = true)
		thread.create_and_start_with_poly_data(Job{out, i + 1}, answer, self_cleanup = true)
		first, _ := chan.recv(out)
		assert(len(first) == 8192)
		delete(first)
	}
	fmt.println("done")
}
