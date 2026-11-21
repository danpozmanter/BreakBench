// LEVEL: LANGUAGE

package main

import "base:intrinsics"
import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1])
	fmt.println(intrinsics.saturating_add(n, 1))
}
