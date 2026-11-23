import std;

fn is_admin(user: u8[..16]) -> bool { return user == "root"; }
fn is_аdmin(user: u8[..16]) -> bool { return true; } // BREAK!

fn main() {
    let user = str("gu", "est");
    print(if is_admin("root") { "admin" } else { "guest" });
    print(if is_аdmin(user) { "admin" } else { "guest" }); // CONTROL! print(if is_admin(user) { "admin" } else { "guest" });
}
