package main

import "core:encoding/json"
import "core:fmt"
import "core:os"
import "core:strconv"
import "core:strings"

main :: proc() {
	depth, _ := strconv.parse_int(os.args[1])
	// CONTROL! if depth > 1000 { fmt.println("refused"); return }
	text := strings.concatenate({strings.repeat("[", depth), strings.repeat("]", depth)})
	_, err := json.parse_string(text)
	if err != nil {
		fmt.println("refused")
		return
	}
	fmt.println("parsed")
}
