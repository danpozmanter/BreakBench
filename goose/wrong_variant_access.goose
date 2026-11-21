enum Value { Int { v: i64 }, Text { t: u8[..16] } }

fn text_len(s: Value.Text) -> i64 { s.t.len }

fn main() {
    let v = Value.Int { v: 42 };
    let w: Value = v;
    print(text_len(w)); // BREAK!
}
