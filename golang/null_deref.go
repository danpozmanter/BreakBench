package main

import (
	"fmt"
	"os"
	"strconv"
)

type User struct{ Name string }

func findUser(id int) *User {
	if id == 1 {
		return &User{Name: "alice"}
	}
	return nil
}

func main() {
	id, _ := strconv.Atoi(os.Args[1])
	u := findUser(id)
	fmt.Println(len(u.Name))
}
