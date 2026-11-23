package main

import "core:fmt"

User :: struct {
	name: string,
}

Session :: struct {
	user: ^User,
}

logout :: proc(session: ^Session) {
	session.user = nil
}

main :: proc() {
	alice := User{name = "alice"}
	session := Session{user = &alice}
	if session.user != nil {
		logout(&session)
		fmt.println(len(session.user.name))
	}
}
