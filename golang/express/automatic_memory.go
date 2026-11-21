// LEVEL: LANGUAGE

package main

import "fmt"

type Rec struct {
	ID   int
	Data [1016]byte
}

func main() {
	var last *Rec
	for i := 0; i < 4000000; i++ {
		last = &Rec{ID: i}
	}
	fmt.Println(last.ID)
}
