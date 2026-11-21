// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	s := make(map[[2]int]bool)
	s[{1, 2}] = true
	fmt.println([2]int{1, 2} in s)
}
