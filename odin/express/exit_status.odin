// LEVEL: STD

package main

import "core:fmt"
import "core:os"

main :: proc() {
	state, _, _, err := os.process_exec({command = {"false"}}, context.allocator)
	if err != nil {
		fmt.eprintln(err)
		os.exit(1)
	}
	fmt.println(state.exit_code)
}
