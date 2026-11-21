// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	count := 0
	count = 5
	count == 5 // REJECT!
	fmt.println(count)
}
