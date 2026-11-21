// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	a := [3]int{1, 2, 3}
	b := a
	b[0] = 9
	fmt.println(a[0])
}
