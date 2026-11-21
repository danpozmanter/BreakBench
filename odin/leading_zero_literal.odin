package main

import "core:fmt"

main :: proc() {
	zip := 01234 // BREAK!
	// CONTROL! zip := 1234
	fmt.println(zip)
}
