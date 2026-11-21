package main

import (
	"fmt"
	"os"
	"strconv"
)

type Node struct {
	Next    *Node
	Payload [2048]byte
}

type Obj struct {
	Payload  [2048]byte
	Callback func() int
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	total := 0
	for i := 0; i < n; i++ {
		a := &Node{}
		b := &Node{Next: a}
		a.Next = b
		o := &Obj{}
		o.Callback = func() int { return len(o.Payload) }
		total += o.Callback()
	}
	if total < 0 {
		fmt.Println("unreachable")
	} else {
		fmt.Println("done")
	}
}
