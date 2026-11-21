// LEVEL: LANGUAGE

package main

import "core:fmt"

DAY :: i64(1_000_000_000 * 60 * 60 * 24)
SPAN :: i64(1_000_000_000) * 60 * 60 * 24 * 365 * 300 // REJECT!

main :: proc() {
	fmt.println(DAY)
	fmt.println(SPAN) // REJECT!
}
