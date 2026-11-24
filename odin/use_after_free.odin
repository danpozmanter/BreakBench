package main

import "core:fmt"

Rec :: struct {
	value: i64,
	pad:   [3]i64,
}

main :: proc() {
	a := new(Rec)
	a.value = 1234
	b := a
	free(a) // BREAK!
	for _ in 0 ..< 16 {
		c := new(Rec)
		c.value = 6666
	}
	fmt.println(b.value)
}
