package main

import "fmt"

func main() {
	var v any = 42
	s := v.(string) // CONTROL! if s, ok := v.(string); ok { fmt.Println(len(s)) } else { fmt.Println("not text") }
	fmt.Println(len(s)) // BREAK!
}
