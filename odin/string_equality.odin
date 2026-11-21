package main

import "core:fmt"
import "core:os"

import "core:strings"

main :: proc() {
	s := strings.concatenate({"ab", os.args[1]})
	fmt.println("equal" if s == "abc" else "different")
}
