use std::fs::File;
use std::io::{BufWriter, Write};

fn main() -> std::io::Result<()> {
    {
        let mut w = BufWriter::new(File::create("/dev/full")?);
        writeln!(w, "data")?;
    }
    println!("saved");
    Ok(())
}
