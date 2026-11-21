import std;

fn main() {
    {
        var session: u8[>..] = [];
        session.resize(64, 0);
        let secret = "SECRET-TOKEN";
        for i in 12 { session[32 + i] = secret[i]; }
    }
    var reply: u8[>..] = [];
    reply.resize(64, 0);
    var out: u8[>..] = [];
    for i in 32..44 { format_uint(out, reply[i] as u64, 16, 2, '0'); }
    print(out);
}
