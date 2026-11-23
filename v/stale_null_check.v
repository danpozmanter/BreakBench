struct User {
	name string
}

struct Session {
mut:
	user ?User
}

fn logout(mut session Session) {
	session.user = none
}

fn main() {
	mut session := Session{
		user: User{
			name: 'alice'
		}
	}
	if user := session.user {
		logout(mut session)
		println(user.name.len)
	}
}
