package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	claimed, _ := strconv.Atoi(os.Args[1])
	buf := make([]byte, 64)
	copy(buf[2:], "SECRET-KEY-0042")
	n := copy(buf, "hi")
	payload := buf[:n]
	// CONTROL! if claimed > len(payload) { fmt.Println("invalid"); return }
	reply := payload[:claimed]
	fmt.Println(string(reply))
}
