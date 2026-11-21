// LEVEL: LANGUAGE

#[derive(Debug)]
enum Kind {
    A,
    B,
}

fn work(a: bool) -> Result<(), Kind> {
    if a { Err(Kind::A) } else { Err(Kind::B) }
}

fn step(a: bool) -> Result<(), Kind> {
    match work(a) {
        Err(Kind::A) => { println!("caught A"); Ok(()) }
        other => other,
    }
}

fn main() {
    step(true).unwrap();
    if let Err(Kind::B) = step(false) { println!("passed B"); }
}
