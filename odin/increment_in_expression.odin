package main

import "core:fmt"

main :: proc() {
	i := 0
	i += 1
	i = i++ // BREAK!
	fmt.println(i)
}
