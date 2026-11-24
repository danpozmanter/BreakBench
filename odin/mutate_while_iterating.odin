package main

import "core:fmt"
import "core:slice"

main :: proc() {
	xs: [dynamic]int
	append(&xs, 1, 2, 2, 3)
	for x in xs { // CONTROL! for pos, found := slice.linear_search(xs[:], 2); found; pos, found = slice.linear_search(xs[:], 2) {
		if x == 2 { // CONTROL! ordered_remove(&xs, pos)
			pos, _ := slice.linear_search(xs[:], x) // BREAK!
			ordered_remove(&xs, pos) // BREAK!
		} // BREAK!
	}
	for x, i in xs {
		if i > 0 do fmt.print(",")
		fmt.print(x)
	}
	fmt.println()
}
