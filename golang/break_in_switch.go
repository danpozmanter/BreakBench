package main

import (
	"fmt"
	"os"
	"strconv"
)

func totalUntilStop(codes []string) int {
	total := 0
	for _, c := range codes {
		code, _ := strconv.Atoi(c)
		switch code {
		case 0:
			break // CONTROL! return total
		default:
			total += code
		}
	}
	return total
}

func main() {
	fmt.Println(totalUntilStop(os.Args[1:]))
}
