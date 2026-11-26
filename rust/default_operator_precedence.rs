fn cached_count(name: &str) -> Option<i64> {
    if name == "ada" { Some(4) } else { None }
}

fn main() {
    let name = std::env::args().nth(1).unwrap_or_default();
    let cached = cached_count(&name);
    let count = cached.unwrap_or(0) + 1;
    println!("{count}");
}
