package main

import (
	"fmt"
	"os"
)

func cachedCount(name string) (int, bool) {
	if name == "ada" {
		return 4, true
	}
	return 0, false
}

func main() {
	// Go has no default operator or conditional expression; the default is an if.
	count := 0
	if cached, ok := cachedCount(os.Args[1]); ok {
		count = cached
	}
	count += 1
	fmt.Println(count)
}
