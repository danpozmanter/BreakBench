package main

import "core:fmt"
import "core:os"

main :: proc() {
	text := os.args[1]
	counts: [256]int
	for i in 0 ..< len(text) {
		counts[text[i]] += 1
	}
	high := 0
	for n in counts[128:] {
		high += n
	}
	fmt.println(high)
}
