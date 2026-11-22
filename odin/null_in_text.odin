package main

import "core:fmt"
import "core:os"
import "core:strconv"

find_name :: proc(id: i64) -> Maybe(string) {
	if id == 1 { return "alice" }
	return nil
}

main :: proc() {
	id, _ := strconv.parse_i64(os.args[1])
	name := find_name(id)
	fmt.printfln("hello, %v", name)
}
