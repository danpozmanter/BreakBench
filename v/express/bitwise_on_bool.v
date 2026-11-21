// LEVEL: LANGUAGE

fn main() {
	s := 'abc'
	if s.len > 0 && s[0] == `a` {
		println('yes')
	}
	if (s.len > 0) & (s[0] == `a`) { println('both') } // REJECT!
}
