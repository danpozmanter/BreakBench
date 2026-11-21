import slot_pool;

struct Rec { value: i64 }

fn main() {
    var pool = slot_pool<Rec> {};
    let a = pool.alloc_index(Rec { value: 1234 });
    let b .= pool.items[a];
    pool.free(a);
    let c = pool.alloc_index(Rec { value: 6666 });
    print(b.value);
}
