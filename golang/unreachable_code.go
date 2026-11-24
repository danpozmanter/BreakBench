package main

import "fmt"

func check() {
	fmt.Println("ok")
	return // BREAK!
	fmt.Println("checked")
}

func main() {
	check()
}
