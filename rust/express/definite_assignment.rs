// LEVEL: LANGUAGE

fn main() {
    let ready = std::env::args().count() < 5;
    let x: i64;
    if ready { x = 5 } else { x = 5 }
    let y: i64; // REJECT!
    if ready { y = 1 } // REJECT!
    println!("{y}"); // REJECT!
    println!("{x}");
}
