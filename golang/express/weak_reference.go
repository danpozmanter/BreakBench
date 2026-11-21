// LEVEL: STD

package main

import (
	"fmt"
	"runtime"
	"weak"
)

type node struct{ v [64]byte }

func main() {
	strong := &node{}
	w := weak.Make(strong)
	strong = nil
	runtime.GC()
	if w.Value() == nil {
		fmt.Println("gone")
	} else {
		fmt.Println("alive")
	}
}
