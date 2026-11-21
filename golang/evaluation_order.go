package main

import "fmt"

func pair(a, b int) string { return fmt.Sprintf("%d %d", a, b) }

func main() {
	n := 0
	next := func() int { n++; return n }
	fmt.Println(pair(next(), next()))
}
