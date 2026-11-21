// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	i := -1
	n := uint(len([]int{1, 2, 3}))
	_ = i < n // REJECT!
	if i < int(n) {
		fmt.Println("less")
	} else {
		fmt.Println("not less")
	}
}
