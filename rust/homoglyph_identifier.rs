fn is_admin(user: &str) -> bool {
    user == "root"
}

fn is_аdmin(_user: &str) -> bool { true } // BREAK!

fn main() {
    let user = "guest";
    println!("{}", if is_admin("root") { "admin" } else { "guest" });
    println!("{}", if is_аdmin(user) { "admin" } else { "guest" }); // CONTROL! println!("{}", if is_admin(user) { "admin" } else { "guest" });
}
