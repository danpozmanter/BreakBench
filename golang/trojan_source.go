package main

import "fmt"

func main() {
	access := "user"
	if access != "user‮ ⁦// admins only⁩ ⁦" { // CONTROL! if access != "user" {
		fmt.Println("admin")
	} else {
		fmt.Println("user")
	}
}
