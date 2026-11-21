// LEVEL: LANGUAGE

fn main() {
    let o: Option<i64> = None;
    let n = o + 1; // REJECT!
    println!("{}", if o.is_some() { "some" } else { "none" });
}
