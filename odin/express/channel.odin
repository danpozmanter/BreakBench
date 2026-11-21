// LEVEL: STD

package main

import "core:fmt"
import "core:sync/chan"
import "core:thread"

main :: proc() {
	ch, _ := chan.create(chan.Chan(int), context.allocator)
	t := thread.create_and_start_with_poly_data(ch, proc(c: chan.Chan(int)) {
		for v in 1 ..= 3 {
			chan.send(c, v)
		}
		chan.close(c)
	})
	got: [3]int
	for i in 0 ..< 3 {
		got[i], _ = chan.recv(ch)
	}
	thread.join(t)
	fmt.println(got[0], got[1], got[2])
}
