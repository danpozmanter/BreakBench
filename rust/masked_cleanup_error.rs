struct Report;

impl Report {
    fn write(&mut self, _text: &str) -> Result<(), String> {
        Err("disk full".to_string())
    }

    fn close(&mut self) -> Result<(), String> {
        Err("close failed".to_string())
    }
}

impl Drop for Report {
    fn drop(&mut self) {
        // Drop cannot return an error, so a failed close cannot replace the error in flight.
        let _ = self.close();
    }
}

fn save() -> Result<(), String> {
    let mut report = Report;
    report.write("totals")?;
    Ok(())
}

fn main() {
    if let Err(error) = save() {
        println!("{error}");
    }
}
