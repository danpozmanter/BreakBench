use regex::Regex;

fn main() {
    let re = Regex::new(r"^[a-z]+$").unwrap();
    let text = std::env::args().nth(1).unwrap();
    if re.is_match(&text) {
        println!("accepted");
    } else {
        println!("rejected");
    }
}
