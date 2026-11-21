// LEVEL: STD

package main

import "core:c/libc"
import "core:fmt"

stop: bool

main :: proc() {
	libc.signal(libc.SIGTERM, proc "c" (sig: libc.int) { stop = true })
	libc.raise(libc.SIGTERM)
	if stop {
		fmt.println("cleaned up")
	}
}
