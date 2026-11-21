// LEVEL: STD

package main

import "core:fmt"
import "core:os"

main :: proc() {
	_, found := os.lookup_env("BB_UNSET", context.allocator)
	fmt.println("present" if found else "absent")
}
