package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	claimed, _ := strconv.parse_int(os.args[1])
	buf: [64]u8
	copy(buf[2:], "SECRET-KEY-0042")
	copy(buf[:], "hi")
	payload := buf[:2]
	// CONTROL! if claimed > len(payload) { fmt.println("invalid"); return }
	reply := payload[:claimed]
	fmt.println(string(reply))
}
