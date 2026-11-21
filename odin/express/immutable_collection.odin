// LEVEL: LANGUAGE

package main

import "core:fmt"

XS :: [3]int{1, 2, 3}

main :: proc() {
	XS[0] = 9 // REJECT!
	fmt.println(len(XS))
}
