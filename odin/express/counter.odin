// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	counts := make(map[string]int)
	for w in ([]string{"a", "b", "a"}) {
		counts[w] += 1
	}
	fmt.printf("a=%d b=%d\n", counts["a"], counts["b"])
}
