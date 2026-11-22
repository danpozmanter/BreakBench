package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	line := os.Args[1]
	pos := strings.Index(line, ":")
	fmt.Println(line[pos+1:])
}
