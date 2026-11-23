struct User {
    name: Option<String>,
}

fn main() {
    let decoded = User { name: None };
    println!("{}", decoded.name.len()); // BREAK!
    let _ = decoded.name.unwrap().len(); // CONTROL! println!("{}", decoded.name.unwrap().len());
}
