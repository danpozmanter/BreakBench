package main

import "fmt"

type Shape struct{}

func (Shape) Area() int { return 0 }

func (s Shape) Describe() string { return fmt.Sprintf("area %d", s.Area()) }

type Square struct{ Shape }

func (Square) Area() int { return 4 }

// CONTROL! func (q Square) Describe() string { return fmt.Sprintf("area %d", q.Area()) }

func main() {
	fmt.Println(Square{}.Describe())
}
