// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	big: i64 = 42
	small := i32(big)
	wrong: i32 = big // REJECT!
	fmt.println(wrong) // REJECT!
	fmt.println(small)
}
