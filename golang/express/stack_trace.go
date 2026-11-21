// LEVEL: STD

package main

import (
	"fmt"
	"runtime/debug"
	"strings"
)

//go:noinline
func inner() string { return string(debug.Stack()) }

func main() {
	if strings.Contains(inner(), "main.inner") {
		fmt.Println("inner")
	} else {
		fmt.Println("missing")
	}
}
