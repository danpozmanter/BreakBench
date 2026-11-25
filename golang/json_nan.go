package main

import (
	"encoding/json"
	"fmt"
	"os"
	"strconv"
)

func main() {
	count, _ := strconv.Atoi(os.Args[1])
	mean := 0.0 / float64(count)
	text, _ := json.Marshal(map[string]float64{"mean": mean}) // CONTROL! text, err := json.Marshal(map[string]float64{"mean": mean})
	fmt.Println(string(text)) // CONTROL! if err != nil { fmt.Println("refused") } else { fmt.Println(string(text)) }
}
