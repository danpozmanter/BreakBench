package main

import "core:fmt"
import "core:os"
import "core:slice"
import "core:strconv"

main :: proc() {
	ids := []int{10, 20, 30}
	id := os.args[1]
	n, ok := strconv.parse_int(id)
	if !ok {
		fmt.println("bad id")
		return
	}
	fmt.println("found" if slice.contains(ids, id) else "missing") // CONTROL! fmt.println("found" if slice.contains(ids, n) else "missing")
}
