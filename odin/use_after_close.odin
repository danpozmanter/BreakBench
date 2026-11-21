package main

import "core:fmt"
import "core:os"

main :: proc() {
	f, err := os.create("/tmp/bb_close.txt")
	if err != nil {
		fmt.eprintln("open:", err)
		os.exit(1)
	}
	if _, werr := os.write_string(f, "a"); werr != nil {
		fmt.eprintln("write:", werr)
		os.exit(1)
	}
	os.close(f)
	if _, werr := os.write_string(f, "b"); werr != nil { // BREAK!
		fmt.eprintln("write:", werr) // BREAK!
		os.exit(1) // BREAK!
	} // BREAK!
	fmt.println("ok")
}
