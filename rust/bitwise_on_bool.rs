fn main() {
    let s = String::new();
    let yes = (!s.is_empty()) & (s.as_bytes()[0] == b'a'); // CONTROL! let yes = !s.is_empty() && s.as_bytes()[0] == b'a';
    println!("{}", if yes { "yes" } else { "no" });
}
