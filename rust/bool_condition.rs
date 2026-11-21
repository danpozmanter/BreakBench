fn compare(a: &str, b: &str) -> i32 {
    a.cmp(b) as i32
}

fn main() {
    if compare("x", "x") == 0 {
        println!("same");
    }
    if compare("x", "x") { println!("different"); } // BREAK!
}
