package main

import "fmt"

const day int64 = 1_000_000_000 * 60 * 60 * 24
const span int64 = 1_000_000_000 * 60 * 60 * 24 * 365 * 300 // BREAK!

func main() {
	fmt.Println(day)
}
