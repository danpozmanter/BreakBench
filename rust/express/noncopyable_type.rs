// LEVEL: LANGUAGE

struct Handle {
    fd: i32,
}

fn main() {
    let h = Handle { fd: 3 };
    let copy = h.clone(); // REJECT!
    let moved = h;
    println!("{}", moved.fd);
}
