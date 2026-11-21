package main

import "core:fmt"

main :: proc() {
	seen := make(map[[2]int]bool)
	key := [2]int{1, 2}
	seen[key] = true
	key[0] = 9
	for e in seen {
		fmt.println("found" if e in seen else "lost")
	}
}
