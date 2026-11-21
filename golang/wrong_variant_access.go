package main

import "fmt"

func main() {
	var v any = 42
	s := v.(string)
	fmt.Println(len(s))
}
