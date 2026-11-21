// LEVEL: LANGUAGE

fn grade(score: i64) -> &'static str {
    if score > 50 { "pass" } else { "fail" }
}

fn bad(score: i64) -> &'static str { // REJECT!
    if score > 50 { return "pass"; } // REJECT!
} // REJECT!

fn main() {
    println!("{}", grade(60));
}
