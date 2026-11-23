use std::fs::File;
use std::io::{BufWriter, Write};

fn main() {
    let mut report = BufWriter::new(File::create("/tmp/bb_report.txt").unwrap());
    writeln!(report, "total=42").unwrap();
}
