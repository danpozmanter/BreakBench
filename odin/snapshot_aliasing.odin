package main

import "core:fmt"
// CONTROL! import "core:slice"

apply_update :: proc(weights: []int) {
	weights[1] = 5
	weights[3] = 0
}

main :: proc() {
	weights: [dynamic]int
	append(&weights, 3, 3, 3, 3)
	before := weights // CONTROL! before := slice.clone(weights[:])
	apply_update(weights[:])
	changes := 0
	for i in 0 ..< len(weights) {
		if before[i] != weights[i] do changes += 1
	}
	fmt.println(changes)
}
