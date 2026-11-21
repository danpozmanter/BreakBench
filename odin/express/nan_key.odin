// LEVEL: LANGUAGE

package main

import "core:fmt"
import "core:strconv"

main :: proc() {
	a, _ := strconv.parse_f64("nan")
	b, _ := strconv.parse_f64("nan")
	s := make(map[f64]bool)
	s[a] = true
	fmt.println("found" if b in s else "missing")
}
