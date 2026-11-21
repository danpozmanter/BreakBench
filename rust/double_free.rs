struct Rec {
    value: i64,
}

fn main() {
    let a = Box::new(Rec { value: 0 });
    drop(a);
    drop(a); // BREAK!
    let x = Box::new(Rec { value: 1 });
    let y = Box::new(Rec { value: 2 });
    let _ = y.value;
    println!("{}", x.value);
}
