package main

import "core:fmt"
import "core:os"
import "core:strconv"

Node :: struct {
	next:    ^Node,
	payload: [2048]u8,
}

Obj :: struct {
	payload:  [2048]u8,
	callback: proc(self: ^Obj) -> int,
}

payload_len :: proc(self: ^Obj) -> int {
	return len(self.payload)
}

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	total := 0
	for _ in 0 ..< n {
		a := new(Node)
		b := new(Node)
		a.next = b
		b.next = a
		o := new(Obj)
		o.callback = payload_len
		total += o.callback(o)
		free(a)
		free(b)
		free(o)
	}
	fmt.println("unreachable" if total == 0 else "done")
}
