// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"time"
)

func main() {
	done := make(chan int)
	go func() {
		time.Sleep(5 * time.Second)
		done <- 1
	}()
	select {
	case <-done:
		fmt.Println("done")
	case <-time.After(100 * time.Millisecond):
		fmt.Println("timed out")
	}
}
