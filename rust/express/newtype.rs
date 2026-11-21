// LEVEL: LANGUAGE

use std::ops::Add;

#[derive(Clone, Copy)]
struct Meters(f64);
#[derive(Clone, Copy)]
struct Seconds(f64);

impl Add for Meters {
    type Output = Meters;
    fn add(self, o: Meters) -> Meters { Meters(self.0 + o.0) }
}

fn main() {
    let total = Meters(2.0) + Meters(3.0);
    let wrong = Meters(2.0) + Seconds(3.0); // REJECT!
    println!("{}", total.0);
}
