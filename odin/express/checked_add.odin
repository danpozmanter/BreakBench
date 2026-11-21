// LEVEL: LANGUAGE

package main

import "base:intrinsics"
import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1])
	_, overflow := intrinsics.overflow_add(n, 1)
	fmt.println("overflow" if overflow else "ok")
}
