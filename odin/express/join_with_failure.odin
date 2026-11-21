// LEVEL: STD

package main

import "core:fmt"
import "core:thread"

Work :: struct {
	failure: string,
}

main :: proc() {
	w: Work
	t := thread.create_and_start_with_poly_data(&w, proc(w: ^Work) {
		w.failure = "bad input"
	})
	thread.join(t)
	if w.failure != "" {
		fmt.println("worker failed:", w.failure)
	}
}
