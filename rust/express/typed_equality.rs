// LEVEL: LANGUAGE

fn main() {
    let id: i64 = 42;
    if id == 42 {
        println!("match");
    }
    if id == "42" { println!("text"); } // REJECT!
}
