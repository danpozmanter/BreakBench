package main

import (
	"fmt"
	"os"
)

func add(a, b int) int { return a + b }

func main() {
	raw := os.Args[1]
	fmt.Println(add(raw, 3)) // BREAK!
	fmt.Println(raw, add(1, 2))
}
