package main

import (
	"fmt"
	"os"
	"strconv"
)

type Color int

const (
	Red Color = iota
	Green
	Blue
)

func main() {
	fmt.Println("before")
	n, _ := strconv.Atoi(os.Args[1])
	c := Color(n)
	fmt.Println(int(c))
}
