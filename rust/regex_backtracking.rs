use regex::Regex;

fn main() {
    let re = Regex::new(r"^(a+)+$").unwrap();
    let text = std::env::args().nth(1).unwrap();
    if re.is_match(&text) {
        println!("match");
    } else {
        println!("no match");
    }
}
