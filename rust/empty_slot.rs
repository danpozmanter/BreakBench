#[derive(Clone)]
struct User {
    name: String,
}

fn main() {
    let mut users: Vec<Option<User>> = vec![None; 3];
    users[1] = Some(User { name: "bob".to_string() });
    users[2] = Some(User { name: "carol".to_string() });
    println!("{}", users[0].name.len()); // BREAK!
    // CONTROL! println!("{}", users[0].as_ref().map_or(0, |u| u.name.len()));
}
