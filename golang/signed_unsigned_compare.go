package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	xs := []int{1, 2, 3}
	i, _ := strconv.Atoi(os.Args[1])
	if i < len(xs) {
		fmt.Println("less")
	} else {
		fmt.Println("not less")
	}
}
