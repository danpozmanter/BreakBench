package main

import "core:fmt"

is_admin :: proc(user: string) -> bool { return user == "root" }
is_аdmin :: proc(user: string) -> bool { return true } // BREAK!

main :: proc() {
	user := "guest"
	fmt.println("admin" if is_admin("root") else "guest")
	fmt.println("admin" if is_аdmin(user) else "guest") // CONTROL! fmt.println("admin" if is_admin(user) else "guest")
}
