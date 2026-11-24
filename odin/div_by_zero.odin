package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	d, _ := strconv.parse_int(os.args[1])
	fmt.println(100 / d) // CONTROL! if d == 0 { fmt.println("cannot divide") } else { fmt.println(100 / d) }
}
