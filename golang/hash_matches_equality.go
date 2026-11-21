package main

import "fmt"

type Point struct {
	X, Y  int
	Label string
}

func (p Point) Equal(o Point) bool { return p.X == o.X && p.Y == o.Y }

func main() {
	s := map[Point]bool{{1, 2, "a"}: true, {1, 2, "b"}: true}
	fmt.Println(len(s))
}
