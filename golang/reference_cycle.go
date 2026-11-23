package main

import (
	"fmt"
	"os"
	"strconv"
)

type Node struct {
	data  []byte
	other *Node
}

func newNode() *Node {
	data := make([]byte, 4096)
	for i := range data {
		data[i] = 1
	}
	return &Node{data: data}
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	for range n {
		parent := newNode()
		child := newNode()
		parent.other = child
		child.other = parent
	}
	fmt.Println("done")
}
