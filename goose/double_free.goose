import slot_pool;

struct Rec { value: i64 }

fn main() {
    var pool = slot_pool<Rec> {};
    let a = pool.alloc_index(Rec { value: 0 });
    pool.free(a);
    pool.free(a); // BREAK!
    let x = pool.alloc_index(Rec { value: 1 });
    let y = pool.alloc_index(Rec { value: 2 });
    print(pool.items[x].value);
}
