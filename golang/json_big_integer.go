package main

import (
	"encoding/json"
	"fmt"
)

func main() {
	var event map[string]any
	if err := json.Unmarshal([]byte(`{"id": 9007199254740993}`), &event); err != nil {
		panic(err)
	}
	fmt.Println(event["id"])
}
