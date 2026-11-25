package main

import "fmt"

type Counter struct{ count int }

func (c *Counter) Increment() { c.count++ }

func runTwice(f func()) {
	f()
	f()
}

func main() {
	counter := &Counter{}
	runTwice(counter.Increment)
	fmt.Println(counter.count)
}
