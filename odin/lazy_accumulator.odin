package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	count, _ := strconv.parse_int(os.args[1])
	source, err := os.open("/dev/zero")
	if err != nil {
		fmt.eprintln("open:", err)
		os.exit(1)
	}
	defer os.close(source)
	total := 0
	for _ in 0 ..< count {
		message := make([]u8, 4096)
		n, _ := os.read(source, message)
		total += n
		delete(message)
	}
	fmt.println(total)
}
