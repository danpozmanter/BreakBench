// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	ok: u8 = 100
	too_big: u8 = 300 // REJECT!
	fmt.println(too_big) // REJECT!
	fmt.println(ok)
}
