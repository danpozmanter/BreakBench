package main

import "core:encoding/json"
import "core:fmt"

User :: struct {
	name: string,
	age:  int,
}

main :: proc() {
	user: User
	if err := json.unmarshal_string(`{"name": "Ada"}`, &user); err != nil { // CONTROL! if err := json.unmarshal_string(`{"name": "Ada", "age": 36}`, &user); err != nil {
		fmt.println("invalid")
		return
	}
	fmt.println(user.age + 1)
}
