package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	price, _ := strconv.Atoi(os.Args[1])
	total := price + 2
	fmt.Println(price) // CONTROL! fmt.Println(total)
}
