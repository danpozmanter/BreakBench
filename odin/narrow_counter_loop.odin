package main

import "core:fmt"

main :: proc() {
	passes := 0
	i: u8 = 0 // BREAK!
	// CONTROL! i: u16 = 0
	for i < 300 {
		passes += 1
		i += 1
	}
	fmt.println(passes)
}
