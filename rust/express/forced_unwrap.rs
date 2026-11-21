// LEVEL: LANGUAGE

fn find(id: i64) -> Option<i64> {
    if id == 1 { Some(36) } else { None }
}

fn main() {
    println!("before");
    println!("{}", find(2).unwrap() + 1);
}
