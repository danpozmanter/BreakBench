package main

import (
	"fmt"
	"strconv"
)

func main() {
	answer := make(chan int)
	go func() {
		n, err := strconv.Atoi("x")
		if err != nil {
			return // CONTROL! close(answer); return
		}
		answer <- n
	}()
	fmt.Println(<-answer) // CONTROL! if n, ok := <-answer; ok { fmt.Println(n) } else { fmt.Println("failed") }
}
