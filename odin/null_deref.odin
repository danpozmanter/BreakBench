package main

import "core:fmt"
import "core:os"
import "core:strconv"

User :: struct {
	name: string,
}

alice := User{name = "alice"}

find_user :: proc(id: i64) -> ^User {
	return &alice if id == 1 else nil
}

main :: proc() {
	id, _ := strconv.parse_i64(os.args[1])
	u := find_user(id)
	fmt.println(len(u.name)) // CONTROL! if u == nil { fmt.println("missing") } else { fmt.println(len(u.name)) }
}
