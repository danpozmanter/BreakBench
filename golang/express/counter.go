// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	counts := map[string]int{}
	for _, w := range []string{"a", "b", "a"} {
		counts[w]++
	}
	fmt.Printf("a=%d b=%d\n", counts["a"], counts["b"])
}
