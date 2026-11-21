import std;
import os;

struct User { id: i64, name: u8[..16] }

fn find_user(users: User[:], id: i64) -> User? {
    for &u in users { if u.id == id { return u; } }
    return null;
}

fn main() {
    var users: User[>..] = [];
    users.push(User { id: 1, name: "alice" });
    let id, ok = parse_int(args()[1]);
    let u = find_user(users, id);
    print(u.name.len); // BREAK!
    print(ok);
}
