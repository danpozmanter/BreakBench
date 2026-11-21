// LEVEL: STD

package main

import "core:debug/trace"
import "core:fmt"
import "core:strings"

inner :: #force_no_inline proc() -> string {
	bt := trace.capture()
	locations, err := trace.resolve(bt)
	if err != nil {
		return ""
	}
	b := strings.builder_make()
	for loc in locations {
		strings.write_string(&b, loc.procedure)
		strings.write_string(&b, "\n")
	}
	return strings.to_string(b)
}

main :: proc() {
	fmt.println("inner" if strings.contains(inner(), "inner") else "missing")
}
