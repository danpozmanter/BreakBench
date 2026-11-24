package main

import "core:fmt"
import "core:os"
import "core:strconv"
// CONTROL! import "core:unicode/utf8"

main :: proc() {
	name := "a👍b"
	n, _ := strconv.parse_int(os.args[1])
	fmt.println(name[:n]) // CONTROL! i := 0; for k := 0; k < n && i < len(name); k += 1 { _, size := utf8.decode_rune_in_string(name[i:]); i += size }; fmt.println(name[:i])
}
