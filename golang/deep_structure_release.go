package main

import (
	"fmt"
	"os"
	"runtime"
	"strconv"
)

type node struct {
	value int
	next  *node
}

func build(n int) *node {
	var head *node
	for i := 0; i < n; i++ {
		head = &node{value: i, next: head}
	}
	return head
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	head := build(n)
	_ = head.value
	head = nil
	runtime.GC()
	fmt.Println("done")
}
