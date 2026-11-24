import std;

struct User { name: u8[..16] }

fn main() {
    var users: User[3]; // CONTROL! var users: User[3]; var present: bool[3];
    users[1] = User { name: "bob" };
    users[2] = User { name: "carol" };
    // CONTROL! present[1] = true; present[2] = true;
    print(users[0].name.len); // CONTROL! if present[0] { print(users[0].name.len); } else { print("missing"); }
}
