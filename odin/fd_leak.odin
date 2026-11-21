package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	_ = os.write_entire_file("/tmp/bb_fd.txt", transmute([]u8)string("x"))
	for _ in 0 ..< n {
		f, err := os.open("/tmp/bb_fd.txt")
		if err != nil {
			fmt.eprintln("open: too many open files:", err)
			os.exit(1)
		}
		b: [1]u8
		_, _ = os.read(f, b[:])
	}
	fmt.println("done")
}
