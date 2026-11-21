package main

import "core:fmt"
import "core:os"
import "core:strconv"

Error :: enum {
	None,
	Invalid_Request,
}

process :: proc(request: string, id: int) -> Error {
	buf := make([]u8, 4096)
	defer delete(buf)
	text := fmt.bprintf(buf, "%s#%d", request, id)
	if text[0] != '{' do return .Invalid_Request
	return .None
}

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	failures := 0
	for i in 0 ..< n {
		if process("not json", i) != .None do failures += 1
	}
	fmt.println("done" if failures == n else "unexpected")
}
