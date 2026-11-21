// LEVEL: STD

package main

import "core:fmt"
import "core:thread"

slots: [10]int

fill :: proc(start: int) {
	for i in start ..< start + 5 {
		slots[i] = i
	}
}

main :: proc() {
	a := thread.create_and_start_with_poly_data(0, fill)
	b := thread.create_and_start_with_poly_data(5, fill)
	thread.join(a)
	thread.join(b)
	sum := 0
	for x in slots {
		sum += x
	}
	fmt.println(sum)
}
