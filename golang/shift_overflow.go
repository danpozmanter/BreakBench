package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	s, _ := strconv.Atoi(os.Args[1])
	var one uint64 = 1
	fmt.Println(one << s)
}
