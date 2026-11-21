// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	price := 40
	total := price + 2
	doubled := price * 2 // REJECT!
	fmt.println(total)
}
