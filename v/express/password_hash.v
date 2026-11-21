// LEVEL: STD

import crypto.bcrypt

fn main() {
	stored := bcrypt.generate_from_password('hunter2'.bytes(), 10)!
	good := if _ := bcrypt.compare_hash_and_password('hunter2'.bytes(), stored.bytes()) { true } else { false }
	bad := if _ := bcrypt.compare_hash_and_password('wrong'.bytes(), stored.bytes()) { true } else { false }
	println('${good} ${bad}')
}
