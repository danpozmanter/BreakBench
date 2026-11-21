package main

import "core:fmt"

main :: proc() {
	table := [3]int{10, 20, 30}
	fmt.println(table[1])
	fmt.println(table[5]) // BREAK!
}
