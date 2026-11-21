package main

import "fmt"

func main() {
	names := []string{
		"alice",
		"bob" // CONTROL! "bob",
		"carol",
	}
	fmt.Println(len(names))
}
