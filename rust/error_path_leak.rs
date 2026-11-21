fn process(request: &str, id: i64) -> Result<(), String> {
    let mut buf = vec![0u8; 4096];
    let text = format!("{}#{}", request, id);
    buf[..text.len()].copy_from_slice(text.as_bytes());
    if buf[0] != b'{' {
        return Err("invalid request".to_string());
    }
    Ok(())
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut failures = 0;
    for i in 0..n {
        if process("not json", i).is_err() {
            failures += 1;
        }
    }
    println!("{}", if failures == n { "done" } else { "unexpected" });
}
