package main

import "core:fmt"

main :: proc() {
	jobs: [dynamic]int
	append(&jobs, 1, 2, 3)
	assert(pop(&jobs) == 3)
	fmt.println(len(jobs))
}
