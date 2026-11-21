package main

import "core:fmt"

counter := 0

next :: proc() -> int {
	counter += 1
	return counter
}

pair :: proc(a, b: int) -> string { return fmt.tprintf("%d %d", a, b) }

main :: proc() { fmt.println(pair(next(), next())) }
