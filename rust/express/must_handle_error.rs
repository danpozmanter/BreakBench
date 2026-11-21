// LEVEL: STD

fn save() -> std::io::Result<()> {
    Err(std::io::Error::other("disk full"))
}

fn main() {
    save(); // REJECT!
    if save().is_err() {
        println!("handled");
    }
}
