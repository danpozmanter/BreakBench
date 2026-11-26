package main

import "core:fmt"

main :: proc() {
	total := 10
	total =+ 5 // CONTROL! total += 5
	fmt.println(total)
}
