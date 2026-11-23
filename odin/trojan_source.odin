package main

import "core:fmt"

main :: proc() {
	access := "user"
	if access != "user‮ ⁦// admins only⁩ ⁦" { // CONTROL! if access != "user" {
		fmt.println("admin")
	} else {
		fmt.println("user")
	}
}
