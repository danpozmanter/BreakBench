package main

import "fmt"

func addItem(item string, cart []string) []string {
	return append(cart, item)
}

func main() {
	addItem("x", nil)
	b := addItem("y", nil)
	fmt.Println(len(b))
}
