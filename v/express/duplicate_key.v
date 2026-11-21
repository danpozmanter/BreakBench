// LEVEL: LANGUAGE

fn main() {
	m := {
		'a': 1
		'b': 2
	}
	println(m.len)
	println({'a': 1, 'a': 2}.len) // REJECT!
}
