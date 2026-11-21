package main

import "core:fmt"
import "core:os"

add :: proc(a, b: i64) -> i64 {
	return a + b
}

main :: proc() {
	raw := os.args[1]
	fmt.println(add(raw, 3)) // BREAK!
	fmt.println(raw, add(1, 2))
}
