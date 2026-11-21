package main

import "fmt"

type Rec struct{ Value int }

func main() {
	a := &Rec{Value: 1234}
	b := a
	a = nil
	c := &Rec{Value: 6666}
	_ = c
	fmt.Println(b.Value)
}
