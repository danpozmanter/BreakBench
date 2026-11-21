package main

import (
	"bytes"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	var heads [][]byte
	var prefixes []string
	for i := 0; i < n; i++ {
		buf := bytes.Repeat([]byte{byte(i)}, 32768)
		heads = append(heads, buf[:16])
		big := strings.Repeat(string(rune('a'+i%26)), 32768)
		prefixes = append(prefixes, big[:16])
	}
	fmt.Println(len(heads))
}
