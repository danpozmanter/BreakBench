package main

import "core:fmt"
import "core:os"

main :: proc() {
	status := "pending"
	if os.args[1] == "ok" {
		status := "done" // CONTROL! status = "done"
		fmt.eprintln("status:", status)
	}
	fmt.println(status)
}
