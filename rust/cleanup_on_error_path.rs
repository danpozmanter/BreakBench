use std::fs::{self, File};
use std::io::Write;

const SCRATCH: &str = "/tmp/bb_scratch/export.csv";

fn export(rows: &[&str]) -> Result<(), String> {
    let mut file = File::create(SCRATCH).map_err(|e| e.to_string())?;
    writeln!(file, "qty").map_err(|e| e.to_string())?;
    for row in rows {
        let qty: i64 = row.parse().map_err(|_| format!("invalid row {row}"))?; // BREAK!
        // CONTROL! let Ok(qty) = row.parse::<i64>() else { let _ = fs::remove_file(SCRATCH); return Err(format!("invalid row {row}")); };
        writeln!(file, "{qty}").map_err(|e| e.to_string())?;
    }
    fs::remove_file(SCRATCH).map_err(|e| e.to_string())?;
    Ok(())
}

fn main() {
    if export(&["3", "x", "5"]).is_err() {
        println!("export failed");
    }
}
