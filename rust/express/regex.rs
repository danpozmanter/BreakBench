// LEVEL: PROJECT

use regex::Regex;

fn main() {
    let re = Regex::new(r"^[a-z]+[0-9]{2}$").unwrap();
    println!("{} {}", re.is_match("abc12"), re.is_match("abc1"));
}
