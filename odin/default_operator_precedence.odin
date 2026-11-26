package main

import "core:fmt"
import "core:os"

cached_count :: proc(name: string) -> Maybe(int) {
	if name == "ada" {
		return 4
	}
	return nil
}

main :: proc() {
	cached := cached_count(os.args[1])
	count := cached.? or_else 0 + 1 // CONTROL! count := (cached.? or_else 0) + 1
	fmt.println(count)
}
