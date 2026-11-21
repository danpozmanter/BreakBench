// LEVEL: LANGUAGE

fn grade(score int) string {
	return if score > 50 { 'pass' } else { 'fail' }
}

fn bad(score int) string { // REJECT!
	if score > 50 { // REJECT!
		return 'pass' // REJECT!
	} // REJECT!
} // REJECT!

fn main() {
	println(grade(60))
}
