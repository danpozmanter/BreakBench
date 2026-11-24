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
	c := Color(n) // CONTROL! if n < int(Red) || n > int(Blue) { fmt.Println("invalid"); return }
	fmt.Println(int(c)) // CONTROL! fmt.Println(n)
}
