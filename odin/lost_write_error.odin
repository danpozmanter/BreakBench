package main

import "core:fmt"
import "core:os"

main :: proc() {
	f, err := os.create("/dev/full")
	if err != nil {
		os.exit(1)
	}
	defer os.close(f)
	if _, werr := os.write_string(f, "data\n"); werr != nil {
		fmt.eprintln("write:", werr)
		os.exit(1)
	}
	fmt.println("saved")
}
