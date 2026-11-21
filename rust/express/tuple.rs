// LEVEL: LANGUAGE

fn pair() -> (i64, &'static str) { (1, "a") }

fn main() {
    let (n, s) = pair();
    println!("{n} {s}");
}
