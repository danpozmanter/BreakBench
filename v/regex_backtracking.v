import os
import regex

fn main() {
	mut re := regex.regex_opt(r'^(a+)+$') or { panic(err) }
	start, _ := re.match_string(os.args[1])
	println(if start >= 0 { 'match' } else { 'no match' })
}
