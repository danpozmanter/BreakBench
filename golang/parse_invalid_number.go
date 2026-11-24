package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1]) // CONTROL! n, err := strconv.Atoi(os.Args[1])
	fmt.Println(n + 1) // CONTROL! if err != nil { fmt.Println("invalid") } else { fmt.Println(n + 1) }
}
