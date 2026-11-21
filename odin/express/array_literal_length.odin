// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	table := [4]int{10, 20, 30, 40}
	fmt.println(table[3])
	short := [4]int{10, 20, 30}; fmt.println(short[0]) // REJECT!
}
