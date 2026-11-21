// LEVEL: LANGUAGE

package main

import "core:fmt"

P :: struct { x, y: int }

main :: proc() {
	a := P{1, 2}
	b := P{1, 2}
	fmt.println("equal" if a == b else "different")
}
