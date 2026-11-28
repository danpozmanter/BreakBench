import json

struct User {
	name string
	age  int
}

fn main() {
	user := json.decode(User, '{"name": "Ada"}') or { // CONTROL! user := json.decode(User, '{"name": "Ada", "age": 36}') or {
		println('invalid')
		return
	}
	println(user.age + 1)
}
