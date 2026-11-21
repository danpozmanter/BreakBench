// LEVEL: LANGUAGE

#[derive(Clone, Copy)]
struct P {
    x: i64,
}

fn main() {
    let a = P { x: 1 };
    let mut b = a;
    b.x = 9;
    println!("{} {}", a.x, if b.x == 9 { "" } else { "?" }.trim());
}
