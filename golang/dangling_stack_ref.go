package main

import "fmt"

func make4242() *int {
	local := 4242
	return &local
}

func clobber() int {
	var junk [64]int
	for i := range junk {
		junk[i] = 7
	}
	return junk[63]
}

func main() {
	r := make4242()
	clobber()
	fmt.Println(*r)
}
