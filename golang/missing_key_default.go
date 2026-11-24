package main

import (
	"fmt"
	"os"
)

func main() {
	stock := map[string]int{"apple": 3, "plum": 4}
	name := os.Args[1]
	fmt.Println(stock[name] + 5) // CONTROL! if n, ok := stock[name]; ok { fmt.Println(n + 5) } else { fmt.Println("unknown") }
}
