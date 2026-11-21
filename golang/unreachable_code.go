package main

import "fmt"

func check() {
	fmt.Println("ok")
	return
	fmt.Println("checked")
}

func main() {
	check()
}
