// LEVEL: LANGUAGE

fn grade(score: i64) -> const u8[:] {
    if score > 50 { return "pass"; }
    return "fail";
}

fn bad(score: i64) -> const u8[:] { // REJECT!
    if score > 50 { return "pass"; } // REJECT!
} // REJECT!

fn main() {
    print(grade(60));
}
