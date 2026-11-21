package main

import "core:fmt"

main :: proc() {
	s := ""
	fmt.println("yes" if (len(s) > 0) & (s[0] == 'a') else "no") // CONTROL! fmt.println("yes" if len(s) > 0 && s[0] == 'a' else "no")
}
