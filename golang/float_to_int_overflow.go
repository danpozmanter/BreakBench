package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	x, _ := strconv.ParseFloat(os.Args[1], 64)
	v := int64(x)
	fmt.Println(v)
}
