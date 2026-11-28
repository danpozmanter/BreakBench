package main

import (
	"encoding/json"
	"fmt"; "strings"
)

func main() {
	var event map[string]any
	dec := json.NewDecoder(strings.NewReader(`{"id": 9007199254740993}`)); dec.UseNumber(); if err := dec.Decode(&event); err != nil {
		panic(err)
	}
	fmt.Println(event["id"])
}
