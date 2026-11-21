// LEVEL: STD

package main

import "core:fmt"
import "core:os"

main :: proc() {
	fmt.println("before")
	assert(len(os.args) + 1 == 3)
	fmt.println("after")
}
