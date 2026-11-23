#[derive(Clone)]
struct User {
    name: String,
}

struct Session {
    user: Option<User>,
}

fn logout(session: &mut Session) {
    session.user = None;
}

fn main() {
    let mut session = Session { user: Some(User { name: "alice".to_string() }) };
    if let Some(user) = &session.user { // BREAK!
    // CONTROL! if let Some(user) = session.user.clone() {
        logout(&mut session);
        println!("{}", user.name.len());
    }
}
