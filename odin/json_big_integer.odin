package main

import "core:encoding/json"
import "core:fmt"

main :: proc() {
	event, err := json.parse_string(`{"id": 9007199254740993}`)
	if err != nil {
		fmt.eprintln(err)
		return
	}
	fmt.println(event.(json.Object)["id"])
}
