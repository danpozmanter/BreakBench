// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	x: i128 = 1 << 100
	fmt.println(x)
}
