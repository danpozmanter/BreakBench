// LEVEL: STD

use std::time::Duration;

fn main() {
    let total = Duration::from_secs_f64(1.5) + Duration::from_millis(500);
    let wrong = Duration::from_millis(500) + 5; // REJECT!
    println!("{}", total.as_millis());
}
