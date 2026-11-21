package main

import "core:fmt"

area :: proc(w, h: int) -> int {
	return w * h
}

main :: proc() {
	fmt.println(area(3)) // BREAK!
	fmt.println(area(3, 4))
}
