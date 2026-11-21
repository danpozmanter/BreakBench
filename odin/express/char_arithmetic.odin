// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	c := 'a'
	n := int(c) + 1
	fmt.println(n)
	m: int = c + 1; fmt.println(m) // REJECT!
}
