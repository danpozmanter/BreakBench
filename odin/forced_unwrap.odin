package main

import "core:fmt"

find :: proc(id: int) -> Maybe(int) {
	if id == 1 { return 36 }
	return nil
}

main :: proc() {
	fmt.println("before")
	fmt.println(find(2).? + 1)
}
