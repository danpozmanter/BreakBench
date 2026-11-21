// LEVEL: STD

use std::error::Error;
use std::fmt;

#[derive(Debug)]
struct Context {
    cause: std::io::Error,
}

impl fmt::Display for Context {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result { write!(f, "loading config: {}", self.cause) }
}

impl Error for Context {
    fn source(&self) -> Option<&(dyn Error + 'static)> { Some(&self.cause) }
}

fn main() {
    let e = Context { cause: std::io::Error::other("not found") };
    println!("{e}");
    println!("{}", e.source().unwrap());
}
