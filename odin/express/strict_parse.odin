// LEVEL: STD

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	_, ok := strconv.parse_i64(os.args[1])
	fmt.println("valid" if ok else "invalid")
}
