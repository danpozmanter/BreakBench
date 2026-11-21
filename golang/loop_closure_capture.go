package main

import (
	"fmt"
	"strings"
)

func main() {
	var fs []func() int
	for i := 0; i < 3; i++ {
		fs = append(fs, func() int { return i })
	}
	parts := []string{}
	for _, f := range fs {
		parts = append(parts, fmt.Sprint(f()))
	}
	fmt.Println(strings.Join(parts, ","))
}
