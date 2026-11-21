package main

import "core:fmt"
import "core:os"
import "core:strconv"
import "core:thread"

total: i64

add_all :: proc() {
	for item in os.args[1:] {
		n, ok := strconv.parse_i64(item)
		if !ok {
			fmt.eprintln("bad number:", item)
			return
		}
		total += n
	}
}

main :: proc() {
	worker := thread.create_and_start(add_all)
	thread.join(worker)
	fmt.println("total", total)
}
