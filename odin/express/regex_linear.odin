// LEVEL: STD

package main

import "core:fmt"
import "core:text/regex"

main :: proc() {
	re, _ := regex.create(`^(a+)+$`)
	_, ok := regex.match(re, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!")
	fmt.println("match" if ok else "no match")
}
