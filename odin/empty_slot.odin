package main

import "core:fmt"

User :: struct {
	name: string,
}

main :: proc() {
	users: [3]User // CONTROL! users: [3]Maybe(User)
	users[1] = User{name = "bob"}
	users[2] = User{name = "carol"}
	fmt.println(len(users[0].name)) // CONTROL! if u, ok := users[0].?; ok { fmt.println(len(u.name)) } else { fmt.println("missing") }
}
