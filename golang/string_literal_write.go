package main

import "fmt"

func main() {
	greeting := "hello"
	greeting[0] = 'j' // CONTROL! greeting = "j" + greeting[1:]
	fmt.Println(greeting)
}
