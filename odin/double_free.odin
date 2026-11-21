package main

import "core:fmt"

Rec :: struct {
	value: i64,
	pad:   [3]i64,
}

main :: proc() {
	a := new(Rec)
	free(a)
	free(a)
	x := new(Rec)
	y := new(Rec)
	x.value = 1
	y.value = 2
	fmt.println(x.value)
}
