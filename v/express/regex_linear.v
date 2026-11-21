// LEVEL: STD

import regex

fn main() {
	mut re := regex.regex_opt(r'^(a+)+$') or { panic(err) }
	println(if re.matches_string('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!') { 'match' } else { 'no match' })
}
