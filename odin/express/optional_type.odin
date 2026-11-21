// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	o: Maybe(int)
	_ = o + 1 // REJECT!
	_, ok := o.?
	fmt.println("some" if ok else "none")
}
