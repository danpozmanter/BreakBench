// LEVEL: LANGUAGE

package main

import "core:fmt"
import "core:strings"

main :: proc() {
	a := "abc"
	b := a
	b = strings.concatenate({b, "d"})
	fmt.println(a)
}
