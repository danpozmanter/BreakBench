// LEVEL: STD

import regex

fn main() {
	mut re := regex.regex_opt(r'^[a-z]+[0-9]{2}$') or { panic(err) }
	println('${re.matches_string('abc12')} ${re.matches_string('abc1')}')
}
