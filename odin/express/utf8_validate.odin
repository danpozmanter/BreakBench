// LEVEL: STD

package main

import "core:fmt"
import "core:unicode/utf8"

main :: proc() {
	bytes := []u8{0x61, 0xFF}
	fmt.println("valid" if utf8.valid_string(string(bytes)) else "invalid")
}
