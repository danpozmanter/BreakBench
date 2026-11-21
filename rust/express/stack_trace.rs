// LEVEL: STD

use std::backtrace::Backtrace;

#[inline(never)]
fn inner() -> String {
    Backtrace::force_capture().to_string()
}

fn main() {
    println!("{}", if inner().contains("inner") { "inner" } else { "missing" });
}
