package main

import (
	"fmt"
	"os"
)

func main() {
	stock := map[string]int{"apple": 3, "plum": 4}
	name := os.Args[1]
	fmt.Println(stock[name] + 5)
}
