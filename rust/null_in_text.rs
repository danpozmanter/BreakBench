fn find_name(id: i64) -> Option<String> {
    if id == 1 { Some("alice".to_string()) } else { None }
}

fn main() {
    let id: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let name = find_name(id);
    println!("hello, {name}"); // CONTROL! println!("hello, {}", name.unwrap_or_else(|| "nobody".to_string()));
}
