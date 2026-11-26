use std::sync::LazyLock;

static LIMIT: LazyLock<i64> = LazyLock::new(|| base() * 2);
static BASE: LazyLock<i64> = LazyLock::new(|| "10".parse().unwrap());

fn base() -> i64 {
    *BASE
}

fn main() {
    println!("{}", *LIMIT);
}
