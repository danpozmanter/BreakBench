package main

import "core:fmt"
import "core:thread"

add :: proc(count: ^int) {
	for _ in 0 ..< 1_000_000 { count^ += 1 }
}

main :: proc() {
	count := 0
	a := thread.create_and_start_with_poly_data(&count, add)
	b := thread.create_and_start_with_poly_data(&count, add)
	thread.join(a)
	thread.join(b)
	fmt.println(count)
}
