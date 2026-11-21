import os

struct User {
	name string
}

fn find_user(id int) ?User {
	if id == 1 {
		return User{
			name: 'alice'
		}
	}
	return none
}

fn main() {
	u := find_user(os.args[1].int())
	println(u.name.len) // BREAK!
	println(u or { User{} }.name)
}
