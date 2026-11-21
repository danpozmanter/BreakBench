import std;
import os;

fn grade(score: i64) -> const u8[:] {
    if score > 50 { return "pass"; }
    if score < 50 { return "fail"; }
    // CONTROL! return "borderline";
}

fn main() {
    let s, ok = parse_int(args()[1]);
    print(grade(s));
}
