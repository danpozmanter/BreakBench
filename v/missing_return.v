import os

fn grade(score int) string {
	if score > 50 {
		return 'pass'
	}
	if score < 50 {
		return 'fail'
	}
	// CONTROL! return 'borderline'
}

fn main() {
	println(grade(os.args[1].int()))
}
