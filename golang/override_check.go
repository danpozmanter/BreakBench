package main

import "fmt"

type Shape struct{}

func (Shape) Describe() string { return "shape" }

type Circle struct{ Shape }

func (Circle) Descibe() string { return "circle" } // CONTROL! func (Circle) Describe() string { return "circle" }

type Describer interface{ Describe() string }

func main() {
	var s Describer = Circle{}
	fmt.Println(s.Describe())
}
