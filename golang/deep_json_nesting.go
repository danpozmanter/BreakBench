package main

import (
	"encoding/json"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	depth, _ := strconv.Atoi(os.Args[1])
	// CONTROL! if depth > 1000 { fmt.Println("refused"); return }
	text := strings.Repeat("[", depth) + strings.Repeat("]", depth)
	var value any
	if err := json.Unmarshal([]byte(text), &value); err != nil {
		fmt.Println("refused")
		return
	}
	fmt.Println("parsed")
}
