package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	v, ok := strconv.parse_int(os.args[1])
	qty: Maybe(int) = v if ok else nil
	present := false
	if qty do present = true // BREAK!
	// CONTROL! if qty != nil do present = true
	if present {
		fmt.printfln("have %d", qty.?)
	} else {
		fmt.println("missing")
	}
}
