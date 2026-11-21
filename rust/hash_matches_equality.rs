use std::collections::HashSet;

#[derive(Hash)] // BREAK!
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

// CONTROL! impl std::hash::Hash for Point { fn hash<H: std::hash::Hasher>(&self, h: &mut H) { std::hash::Hash::hash(&self.x, h); std::hash::Hash::hash(&self.y, h); } }

fn main() {
    let mut s = HashSet::new();
    s.insert(Point { x: 1, y: 2, label: "a".into() });
    s.insert(Point { x: 1, y: 2, label: "b".into() });
    println!("{}", s.len());
}
