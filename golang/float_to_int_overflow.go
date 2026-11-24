package main

import (
	"fmt" // CONTROL! "fmt"; "math/big"
	"os"
	"strconv"
)

func main() {
	x, _ := strconv.ParseFloat(os.Args[1], 64)
	v := int64(x) // CONTROL! v, _ := big.NewFloat(x).Int(nil)
	fmt.Println(v)
}
