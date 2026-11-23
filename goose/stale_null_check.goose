import std;

struct User { name: u8[..16] }
struct Session { user: User? }

fn logout(session: Session&) {
    session.user .= null;
}

fn main() {
    var alice = User { name: "alice" };
    var session = Session { user: alice };
    if session.user {
        logout(session);
        print(session.user.name.len); // BREAK!
    }
}
