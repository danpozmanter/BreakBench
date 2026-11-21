// LEVEL: LANGUAGE

struct Rec { id: i64, data: u8[>..] }

fn main() {
    var last = Rec { id: 0, data: [] };
    for i in 4000000 {
        last = Rec { id: i, data: [] };
        last.data.resize(1016, 0);
    }
    print(last.id);
}
