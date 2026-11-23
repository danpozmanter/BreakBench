struct User {
	name string
}

fn main() {
	mut users := []User{len: 3}
	users[1] = User{
		name: 'bob'
	}
	users[2] = User{
		name: 'carol'
	}
	println(users[0].name.len)
}
