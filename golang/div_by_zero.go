package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	d, _ := strconv.Atoi(os.Args[1])
	fmt.Println(100 / d)
}
