package main

import "core:fmt"

main :: proc() {
	done := 3
	total := 5
	_ = total
	fmt.printf("%d of %d\n", done) // CONTROL! fmt.printf("%d of %d\n", done, total)
}
