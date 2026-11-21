// LEVEL: PROJECT

use regex::Regex;

fn main() {
    let re = Regex::new(r"^(a+)+$").unwrap();
    println!("{}", if re.is_match("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!") { "match" } else { "no match" });
}
