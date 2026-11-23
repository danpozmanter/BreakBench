package main

import "fmt"

func isAdmin(user string) bool { return user == "root" }

func isАdmin(user string) bool { return true } // BREAK!

func main() {
	user := "guest"
	fmt.Println(map[bool]string{true: "admin", false: "guest"}[isAdmin("root")])
	if isАdmin(user) { // CONTROL! if isAdmin(user) {
		fmt.Println("admin")
	} else {
		fmt.Println("guest")
	}
}
