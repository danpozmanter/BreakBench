// LEVEL: LANGUAGE

enum Shape {
	circle
	square
}

fn describe(s Shape) string {
	return match s {
		.circle { 'circle' }
		else { 'other' }
	}
}

fn bad(s Shape) string { // REJECT!
	return match s { // REJECT!
		else { 'other' } // REJECT!
		.circle { 'circle' } // REJECT!
	} // REJECT!
} // REJECT!

fn main() {
	println(describe(.square))
}
