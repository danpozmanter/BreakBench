package main

import "core:fmt"

main :: proc() {
	xs := [6]int{1, 2, 3, 4, 5, 6}
	evens: [dynamic]int
	defer delete(evens)
	for x in xs do if x % 2 == 0 do append(&evens, x)
	total := 0
	for x in evens do total += x
	fmt.println(total, len(evens))
}
