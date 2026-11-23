package main

import "core:fmt"

User :: struct {
	name: string,
}

main :: proc() {
	users: [3]User
	users[1] = User{name = "bob"}
	users[2] = User{name = "carol"}
	fmt.println(len(users[0].name))
}
