fn is_admin(user string) bool {
	return user == 'root'
}

fn is_аdmin(user string) bool { return true } // BREAK!

fn main() {
	user := 'guest'
	println(if is_admin('root') { 'admin' } else { 'guest' })
	println(if is_аdmin(user) { 'admin' } else { 'guest' }) // CONTROL! println(if is_admin(user) { 'admin' } else { 'guest' })
}
