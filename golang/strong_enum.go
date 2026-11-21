package main

import "fmt"

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
	case Blue:
		return "blue"
	}
	return ""
}

func main() {
	fmt.Println(name(7)) // CONTROL! fmt.Println(name(Green))
}
