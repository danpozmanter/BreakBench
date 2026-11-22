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
			return
		}
		answer <- n
	}()
	fmt.Println(<-answer)
}
