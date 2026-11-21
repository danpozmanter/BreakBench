// LEVEL: LANGUAGE

use std::collections::HashSet;
use std::hash::{Hash, Hasher};

struct Point {
    x: i64,
    y: i64,
    label: String,
}

impl PartialEq for Point {
    fn eq(&self, o: &Self) -> bool {
        self.x == o.x && self.y == o.y
    }
}

impl Eq for Point {}

impl Hash for Point {
    fn hash<H: Hasher>(&self, h: &mut H) {
        self.x.hash(h);
        self.y.hash(h);
    }
}

#[derive(Hash)] // REJECT!
struct Bad { x: i64, label: String } // REJECT!
impl PartialEq for Bad { fn eq(&self, o: &Self) -> bool { self.x == o.x } } // REJECT!

fn main() {
    let mut s = HashSet::new();
    s.insert(Point { x: 1, y: 2, label: "a".into() });
    s.insert(Point { x: 1, y: 2, label: "b".into() });
    println!("{}", s.len());
}
