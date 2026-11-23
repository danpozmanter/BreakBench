use std::error::Error;
use std::fmt;

#[derive(Debug)]
struct ValidationError {
    field: String,
}

impl fmt::Display for ValidationError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "invalid {}", self.field)
    }
}

impl Error for ValidationError {}

fn validate(name: &str) -> Option<Box<dyn Error>> {
    let problem: Option<Box<ValidationError>> = if name.is_empty() {
        Some(Box::new(ValidationError { field: "name".to_string() }))
    } else {
        None
    };
    problem.map(|p| p as Box<dyn Error>)
}

fn main() {
    println!("{}", if validate("ada").is_some() { "invalid" } else { "valid" });
}
