package main

import "core:fmt"
import "core:slice"

count :: proc(xs: []int) -> int {
	slice.sort(xs)
	return len(xs)
}

main :: proc() {
	items := []int{3, 1, 2}
	_ = count(items)
	fmt.println(items[0])
}
