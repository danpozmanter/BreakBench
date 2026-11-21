package main

import "core:fmt"

total :: proc(a, b: i64) -> i64 {
	return // CONTROL! return a + b
		a + b // BREAK!
}

main :: proc() {
	fmt.println(total(2, 3))
}
