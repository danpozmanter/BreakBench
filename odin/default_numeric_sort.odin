package main

import "core:fmt"
import "core:slice"

main :: proc() {
	scores := [3]int{10, 9, 1}
	slice.sort(scores[:])
	fmt.println(scores[0], scores[1], scores[2])
}
