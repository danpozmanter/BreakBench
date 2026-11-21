package main

import "fmt"

func main() {
	session := make([]byte, 64)
	copy(session[32:], "SECRET-TOKEN")
	session = nil
	reply := make([]byte, 64)
	fmt.Printf("%x\n", reply[32:44])
}
