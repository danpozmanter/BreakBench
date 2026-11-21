use std::cell::Cell;

fn pair(a: i64, b: i64) -> String {
    format!("{a} {b}")
}

fn main() {
    let n = Cell::new(0);
    let next = || {
        n.set(n.get() + 1);
        n.get()
    };
    println!("{}", pair(next(), next()));
}
