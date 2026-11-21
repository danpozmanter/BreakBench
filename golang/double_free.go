package main

import "fmt"

type Rec struct{ Value int }

func main() {
	a := &Rec{Value: 0}
	a = nil
	a = nil
	_ = a
	x := &Rec{Value: 1}
	y := &Rec{Value: 2}
	_ = y
	fmt.Println(x.Value)
}
