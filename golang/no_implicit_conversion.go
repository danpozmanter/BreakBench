package main

import "fmt"

func main() {
	var big int64 = 42
	small := int32(big)
	var wrong int32 = big // BREAK!
	_ = wrong             // BREAK!
	fmt.Println(small)
}
