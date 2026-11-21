package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	name := "a👍b"
	n, _ := strconv.Atoi(os.Args[1])
	fmt.Println(name[:n])
}
