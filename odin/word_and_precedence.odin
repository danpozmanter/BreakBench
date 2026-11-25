package main

import "core:fmt"
import "core:os"

main :: proc() {
	ready := os.args[1] == "yes"
	approved := os.args[2] == "yes"
	ok := ready && approved
	fmt.println("go" if ok else "wait")
}
