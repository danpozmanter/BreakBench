// LEVEL: LANGUAGE

fn main() {
    var buf: u8[>..] = [];
    for i in 100000 {
        buf.push(i as! u8);
    }
    print(buf.len);
}
