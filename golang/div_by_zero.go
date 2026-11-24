package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	d, _ := strconv.Atoi(os.Args[1])
	fmt.Println(100 / d) // CONTROL! if d == 0 { fmt.Println("cannot divide") } else { fmt.Println(100 / d) }
}
