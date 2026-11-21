package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	x, _ := strconv.Atoi(os.Args[1])
	inside := 1 < x < 3 // BREAK!
	// CONTROL! inside := 1 < x && x < 3
	fmt.Println(map[bool]string{true: "inside", false: "outside"}[inside])
}
