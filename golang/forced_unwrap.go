package main

import "fmt"

type User struct{ Age int }

func find(id int) *User {
	if id == 1 {
		return &User{Age: 36}
	}
	return nil
}

func main() {
	fmt.Println("before")
	fmt.Println(find(2).Age + 1) // CONTROL! if u := find(2); u != nil { fmt.Println(u.Age + 1) } else { fmt.Println("missing") }
}
