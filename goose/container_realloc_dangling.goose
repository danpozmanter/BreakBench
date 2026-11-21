struct Item { val: i64 }

fn main() {
    var v: Item[>..] = [];
    let r .= v.push(Item { val: 1 });
    for i in 1000 { v.push(Item { val: i }); }
    var w: Item[>..] = [];
    w.push(Item { val: 7 });
    r.val = 99;
    print(w[0].val);
}
