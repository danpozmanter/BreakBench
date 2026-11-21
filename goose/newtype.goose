struct Meters { v: f64 }
struct Seconds { v: f64 }

fn add(a: Meters, b: Meters) -> Meters { Meters { v: a.v + b.v } }

fn main() {
    let total = add(Meters { v: 2.0 }, Meters { v: 3.0 });
    let wrong = add(Meters { v: 2.0 }, Seconds { v: 3.0 }); // BREAK!
    print(total.v);
}
