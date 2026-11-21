// LEVEL: LANGUAGE

fn main() {
    let id: i64 = 42;
    if id == 42 { print("match"); }
    if id == "42" { print("text"); } // REJECT!
}
