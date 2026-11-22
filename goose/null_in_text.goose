import std;
import os;

struct User { id: i64, name: u8[..16] }

fn find_name(users: User[:], id: i64) -> u8[..16]? {
    for &u in users { if u.id == id { return u.name; } }
    return null;
}

fn main() {
    var users: User[>..] = [];
    users.push(User { id: 1, name: "alice" });
    let id, ok = parse_int(args()[1]);
    let name = find_name(users, id);
    print("hello, ", name);
    print(ok);
}
