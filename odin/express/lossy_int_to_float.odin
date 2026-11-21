// LEVEL: LANGUAGE

package main

import "core:fmt"

show :: proc(f: f64) { fmt.println(f) }

main :: proc() {
	n: i64 = 7
	show(f64(n))
	show(n) // REJECT!
}
