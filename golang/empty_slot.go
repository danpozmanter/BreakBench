package main

import "fmt"

type User struct{ Name string }

func main() {
	users := make([]User, 3) // CONTROL! users := make([]*User, 3)
	users[1] = User{Name: "bob"} // CONTROL! users[1] = &User{Name: "bob"}
	users[2] = User{Name: "carol"} // CONTROL! users[2] = &User{Name: "carol"}
	fmt.Println(len(users[0].Name)) // CONTROL! if users[0] == nil { fmt.Println("missing") } else { fmt.Println(len(users[0].Name)) }
}
