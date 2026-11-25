use std::error::Error;
use std::fs;

fn main() -> Result<(), Box<dyn Error>> {
    let text = match fs::read_to_string("/nonexistent/bb.conf") {
        Ok(text) => text,
        Err(error) => {
            eprintln!("config missing: {error}");
            return; // BREAK!
            // CONTROL! return Err(error.into());
        }
    };
    println!("{}", text.len());
    Ok(())
}
