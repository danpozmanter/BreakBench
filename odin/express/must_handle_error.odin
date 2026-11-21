// LEVEL: LANGUAGE

package main

import "core:fmt"

Save_Error :: enum { None, Disk_Full }

@(require_results)
save :: proc() -> Save_Error { return .Disk_Full }

main :: proc() {
	save() // REJECT!
	if save() != nil {
		fmt.println("handled")
	}
}
