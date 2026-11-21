// LEVEL: LANGUAGE

const DAY: i64 = 1_000_000_000 * 60 * 60 * 24;
const SPAN: i64 = 1_000_000_000 * 60 * 60 * 24 * 365 * 300; // REJECT!

fn main() {
    println!("{DAY}");
    println!("{SPAN}"); // REJECT!
}
