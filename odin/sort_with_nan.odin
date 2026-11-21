package main

import "core:fmt"
import "core:math"
import "core:slice"

main :: proc() {
	nan := math.nan_f64()
	xs := [7]f64{5, nan, 3, 1, nan, 4, 2}
	slice.sort(xs[:])
	prev := math.inf_f64(-1)
	ordered := true
	for x in xs {
		if math.is_nan(x) do continue
		if x < prev do ordered = false
		prev = x
	}
	fmt.println("ordered" if ordered else "unordered")
}
