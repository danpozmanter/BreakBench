// LEVEL: LANGUAGE

fn main() {
	id := 42
	if id == 42 {
		println('match')
	}
	if id == '42' { println('text') } // REJECT!
}
