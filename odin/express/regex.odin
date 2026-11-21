// LEVEL: STD

package main

import "core:fmt"
import "core:text/regex"

main :: proc() {
	re, err := regex.create(`^[a-z]+[0-9]{2}$`)
	if err != nil {
		fmt.eprintln(err)
		return
	}
	_, a := regex.match(re, "abc12")
	_, b := regex.match(re, "abc1")
	fmt.println(a, b)
}
