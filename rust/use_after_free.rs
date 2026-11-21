struct Rec {
    value: i64,
}

fn main() {
    let a = Box::new(Rec { value: 1234 });
    let b = &a;
    drop(a);
    let c = Box::new(Rec { value: 6666 });
    println!("{}", b.value); // BREAK!
    println!("{}", c.value);
}
