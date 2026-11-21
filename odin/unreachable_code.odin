package main

import "core:fmt"

check :: proc(n: int) {
	if n > 100 {
		fmt.println("big")
		return
	}
	fmt.println("ok")
	return
	fmt.println("checked") // BREAK!
}

main :: proc() { check(1) }
