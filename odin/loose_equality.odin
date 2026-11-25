package main

import "core:fmt"
import "core:os"

main :: proc() {
	code := os.args[1]
	fmt.println("same" if code == 0 else "different") // CONTROL! fmt.println("same" if code == "0" else "different")
}
