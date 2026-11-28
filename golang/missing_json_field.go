package main

import (
	"encoding/json"
	"fmt"
)

type User struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

func main() {
	var user User
	if err := json.Unmarshal([]byte(`{"name": "Ada"}`), &user); err != nil { // CONTROL! if err := json.Unmarshal([]byte(`{"name": "Ada", "age": 36}`), &user); err != nil {
		fmt.Println("invalid")
		return
	}
	fmt.Println(user.Age + 1)
}
