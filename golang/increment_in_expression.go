package main

import "fmt"

func main() {
	i := 0
	i++
	i = i++ // BREAK!
	fmt.Println(i)
}
