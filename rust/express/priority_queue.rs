// LEVEL: STD

use std::cmp::Reverse;
use std::collections::BinaryHeap;

fn main() {
    let mut q = BinaryHeap::from([Reverse(3), Reverse(1), Reverse(2)]);
    let mut got = Vec::new();
    while let Some(Reverse(v)) = q.pop() { got.push(v.to_string()); }
    println!("{}", got.join(" "));
}
