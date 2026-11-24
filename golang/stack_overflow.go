package main

import (
	"fmt"
	"os"
	"strconv"
)

func walk(n int64) int64 {
	if n == 0 {
		return 0
	}
	return (walk(n-1)*31 + n) % 1000000007
}

func main() {
	n, _ := strconv.ParseInt(os.Args[1], 10, 64)
	fmt.Println(walk(n)) // CONTROL! acc := int64(0); for i := int64(1); i <= n; i++ { acc = (acc*31 + i) % 1000000007 }; fmt.Println(acc)
}
