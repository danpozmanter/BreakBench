package main

import "core:fmt"

main :: proc() {
	values := [2]int{3, 4}
	sum := values[0] + values[1]
	count := len(values)
	avg: f64 = sum / count // BREAK!
	// CONTROL! avg: f64 = f64(sum) / f64(count)
	fmt.printf("%.1f\n", avg)
}
