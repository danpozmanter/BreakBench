package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	name := "a👍b"
	n, _ := strconv.Atoi(os.Args[1])
	fmt.Println(name[:n]) // CONTROL! fmt.Println(string([]rune(name)[:n]))
}
