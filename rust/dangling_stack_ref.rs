fn make() -> &'static i32 {
    let local = 4242;
    &local // BREAK!
    // CONTROL! Box::leak(Box::new(local))
}

fn clobber() {
    let junk = [7i32; 64];
    std::hint::black_box(&junk);
}

fn main() {
    let r = make();
    clobber();
    println!("{}", r);
}
