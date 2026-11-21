// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	x :: 1
	x = 2 // REJECT!
	fmt.println(x)
}
