package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.ParseInt(os.Args[1], 10, 64) // CONTROL! n, err := strconv.ParseInt(os.Args[1], 10, 64)
	fmt.Println(n) // CONTROL! if err != nil { fmt.Println("invalid") } else { fmt.Println(n) }
}
