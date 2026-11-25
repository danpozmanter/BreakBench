package main

import (
	"fmt"
	"sync"
)

func firstAnswer(workers *sync.WaitGroup) int {
	answers := make(chan int) // BREAK!
	// CONTROL! answers := make(chan int, 2)
	for range 2 {
		workers.Go(func() { answers <- 42 })
	}
	return <-answers
}

func main() {
	var workers sync.WaitGroup
	fmt.Println(firstAnswer(&workers))
	workers.Wait()
	fmt.Println("done")
}
