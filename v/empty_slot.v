struct User {
	name string
}

fn main() {
	mut users := []User{len: 3}
	// CONTROL! mut present := []bool{len: 3}
	users[1] = User{
		name: 'bob'
	}
	users[2] = User{
		name: 'carol'
	}
	// CONTROL! present[1] = true
	// CONTROL! present[2] = true
	println(users[0].name.len) // CONTROL! if present[0] { println(users[0].name.len) } else { println('missing') }
}
