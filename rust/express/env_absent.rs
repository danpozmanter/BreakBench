// LEVEL: STD

fn main() {
    match std::env::var("BB_UNSET") {
        Err(std::env::VarError::NotPresent) => println!("absent"),
        _ => println!("present"),
    }
}
