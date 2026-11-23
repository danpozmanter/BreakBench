package main

import "fmt"

type User struct{ Name string }

func main() {
	users := make([]User, 3)
	users[1] = User{Name: "bob"}
	users[2] = User{Name: "carol"}
	fmt.Println(len(users[0].Name))
}
