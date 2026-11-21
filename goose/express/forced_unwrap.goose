// LEVEL: LANGUAGE

struct User { id: i64, age: i64 }

fn find(users: User[:], id: i64) -> User? {
    for &u in users { if u.id == id { return u; } }
    return null;
}

fn main() {
    var users: User[>..] = [];
    users.push(User { id: 1, age: 36 });
    print("before");
    let u = find(users, 2);
    assert(u);
    print(u.age + 1);
}
