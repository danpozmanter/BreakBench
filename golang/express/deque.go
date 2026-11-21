// LEVEL: STD

package main

import (
	"container/list"
	"fmt"
)

func main() {
	d := list.New()
	d.PushBack(1)
	d.PushFront(0)
	d.PushBack(2)
	fmt.Println(d.Remove(d.Front()), d.Remove(d.Back()))
}
