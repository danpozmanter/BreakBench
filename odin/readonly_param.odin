package main

import "core:fmt"
import "core:slice"

count :: proc(xs: []int) -> int {
	slice.sort(xs) // CONTROL! sorted := slice.clone(xs); defer delete(sorted); slice.sort(sorted)
	return len(xs)
}

main :: proc() {
	items := []int{3, 1, 2}
	_ = count(items)
	fmt.println(items[0])
}
