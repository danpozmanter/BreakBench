package main

import "core:fmt"
import "core:os"
import "core:strconv"

grade :: proc(score: int) -> string {
	if score > 50 do return "pass"
	if score < 50 do return "fail"
	// CONTROL! return "borderline"
}

main :: proc() {
	s, _ := strconv.parse_int(os.args[1])
	fmt.println(grade(s))
}
