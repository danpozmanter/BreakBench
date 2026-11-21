struct User {
    name: String,
}

fn find_user(id: i64) -> Option<User> {
    if id == 1 { Some(User { name: "alice".to_string() }) } else { None }
}

fn main() {
    let id: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let u = find_user(id);
    println!("{}", u.name.len()); // BREAK!
    let _ = u;
}
