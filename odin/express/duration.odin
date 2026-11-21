// LEVEL: STD

package main

import "core:fmt"
import "core:time"

main :: proc() {
	total := 1500 * time.Millisecond + 500 * time.Millisecond
	n := 5; _ = total + n // REJECT!
	fmt.println(time.duration_milliseconds(total))
}
