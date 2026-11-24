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

func name(c Color) string {
	switch c {
	case Red:
		return "red"
	case Green:
		return "green"
	// CONTROL! case Blue:
		// CONTROL! return "blue"
	}
	return "unknown"
}

func main() {
	i, _ := strconv.Atoi(os.Args[1])
	fmt.Println(name(Color(i)))
}
