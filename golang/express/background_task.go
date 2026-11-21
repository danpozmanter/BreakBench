// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"time"
)

func main() {
	answer := make(chan int)
	go func() {
		time.Sleep(50 * time.Millisecond)
		answer <- 7
	}()
	fmt.Println("started")
	fmt.Println(<-answer)
}
