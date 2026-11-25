package main

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:strconv"

Report :: struct {
	mean: f64,
}

main :: proc() {
	count, _ := strconv.parse_int(os.args[1])
	mean := 0.0 / f64(count)
	text, _ := json.marshal(Report{mean}) // CONTROL! text, err := json.marshal(Report{mean})
	fmt.println(string(text)) // CONTROL! if err != nil { fmt.println("refused") } else { fmt.println(string(text)) }
}
