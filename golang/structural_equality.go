package main

import "fmt"

type P struct{ X, Y int }

func main() {
	a := P{1, 2}
	b := P{1, 2}
	if a == b {
		fmt.Println("equal")
	} else {
		fmt.Println("different")
	}
}
