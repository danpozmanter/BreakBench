// LEVEL: STD

package main

import "core:fmt"
import "core:os"

main :: proc() {
	_, stdout, _, err := os.process_exec({command = {"echo", "hi; touch /tmp/bb_x"}}, context.allocator)
	if err != nil {
		fmt.eprintln(err)
		os.exit(1)
	}
	fmt.print(string(stdout))
}
