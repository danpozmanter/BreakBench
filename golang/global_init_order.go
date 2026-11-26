package main

import (
	"fmt"
	"strconv"
)

var limit = base() * 2
var baseValue, _ = strconv.Atoi("10")

func base() int { return baseValue }

func main() {
	fmt.Println(limit)
}
