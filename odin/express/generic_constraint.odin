// LEVEL: LANGUAGE

package main

import "core:fmt"
import "core:slice"

Point :: struct { x, y: int }

main :: proc() {
	xs := [3]int{3, 1, 2}
	slice.sort(xs[:])
	ps := [1]Point{{1, 2}} // REJECT!
	slice.sort(ps[:]) // REJECT!
	fmt.println(xs[0])
}
