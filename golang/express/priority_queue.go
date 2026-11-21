// LEVEL: STD

package main

import (
	"container/heap"
	"fmt"
)

type ints []int

func (h ints) Len() int           { return len(h) }
func (h ints) Less(i, j int) bool { return h[i] < h[j] }
func (h ints) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *ints) Push(x any)        { *h = append(*h, x.(int)) }
func (h *ints) Pop() any {
	old := *h
	v := old[len(old)-1]
	*h = old[:len(old)-1]
	return v
}

func main() {
	h := &ints{3, 1, 2}
	heap.Init(h)
	a, b, c := heap.Pop(h), heap.Pop(h), heap.Pop(h)
	fmt.Println(a, b, c)
}
