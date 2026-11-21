package main

import "core:fmt"
import "core:slice"

main :: proc() {
	xs: [dynamic]int
	append(&xs, 1, 2, 2, 3)
	for x in xs {
		if x == 2 {
			pos, _ := slice.linear_search(xs[:], x)
			ordered_remove(&xs, pos)
		}
	}
	for x, i in xs {
		if i > 0 do fmt.print(",")
		fmt.print(x)
	}
	fmt.println()
}
