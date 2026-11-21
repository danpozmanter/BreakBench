// LEVEL: LANGUAGE

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
	fmt.Println(find(2).Age + 1)
}
