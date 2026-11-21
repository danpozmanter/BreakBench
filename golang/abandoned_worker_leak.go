package main

import (
	"fmt"
	"os"
	"strconv"
)

func answer(out chan<- []int, seed int) {
	buf := make([]int, 8192)
	for i := range buf {
		buf[i] = seed
	}
	out <- buf
}

func main() {
	rounds, _ := strconv.Atoi(os.Args[1])
	for i := 0; i < rounds; i++ {
		out := make(chan []int)
		go answer(out, i)
		go answer(out, i+1)
		<-out
	}
	fmt.Println("done")
}
