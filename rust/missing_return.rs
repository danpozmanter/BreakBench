fn grade(score: i64) -> &'static str {
    if score > 50 {
        return "pass";
    }
    if score < 50 {
        return "fail";
    }
    // CONTROL! "borderline"
}

fn main() {
    let score: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", grade(score));
}
