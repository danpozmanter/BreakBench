package main

import (
	"fmt" // CONTROL! "fmt"; "math/big"
	"os"
	"strconv"
)

func main() {
	s, _ := strconv.Atoi(os.Args[1])
	var one uint64 = 1 // BREAK!
	fmt.Println(one << s) // CONTROL! fmt.Println(new(big.Int).Lsh(big.NewInt(1), uint(s)))
}
