import std;

struct User { name: u8[..16] }

fn main() {
    var users: User[3];
    users[1] = User { name: "bob" };
    users[2] = User { name: "carol" };
    print(users[0].name.len);
}
