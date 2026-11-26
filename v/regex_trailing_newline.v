import os
import regex

fn main() {
	mut re := regex.regex_opt(r'^[a-z]+$') or { panic(err) }
	start, _ := re.match_string(os.args[1]) // CONTROL! start, end := re.match_string(os.args[1])
	println(if start >= 0 { 'accepted' } else { 'rejected' }) // CONTROL! println(if start >= 0 && end == os.args[1].len { 'accepted' } else { 'rejected' })
}
