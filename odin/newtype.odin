package main

import "core:fmt"

Meters :: distinct f64
Seconds :: distinct f64

main :: proc() {
	total := Meters(2) + Meters(3)
	_ = Meters(2) + Seconds(3) // BREAK!
	fmt.println(f64(total))
}
