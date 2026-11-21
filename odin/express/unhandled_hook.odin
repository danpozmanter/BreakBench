// LEVEL: LANGUAGE

package main

import "base:runtime"
import "core:fmt"
import "core:os"

main :: proc() {
	context.assertion_failure_proc = proc(prefix, message: string, loc: runtime.Source_Code_Location) -> ! {
		fmt.println("hook ran")
		os.exit(1)
	}
	panic("boom")
}
