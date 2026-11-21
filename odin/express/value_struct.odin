// LEVEL: LANGUAGE

package main

import "core:fmt"

P :: struct {
	x: int,
}

main :: proc() {
	a := P{x = 1}
	b := a
	b.x = 9
	fmt.println(a.x)
}
