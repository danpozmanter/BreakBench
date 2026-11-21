use std::fs::File;
use std::io::{self, Write};

fn main() -> io::Result<()> {
    let mut f = File::create("/tmp/bb_close.txt")?;
    f.write_all(b"a")?;
    drop(f);
    f.write_all(b"b")?; // BREAK!
    println!("ok");
    Ok(())
}
