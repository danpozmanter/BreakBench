package main

import "core:fmt"

main :: proc() {
	big: i64 = 42
	small := i32(big)
	wrong: i32 = big // BREAK!
	fmt.println(wrong) // BREAK!
	fmt.println(small)
}
