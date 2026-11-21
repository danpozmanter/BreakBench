struct LogCloser;

impl Drop for LogCloser {
    fn drop(&mut self) {}
}

fn write_report() -> Result<(), String> {
    Err("disk full".to_string())
}

fn save_report() -> Result<(), String> {
    let _closer = LogCloser;
    write_report()?;
    Ok(())
}

fn main() {
    println!("{}", if save_report().is_ok() { "saved" } else { "failed" });
}
