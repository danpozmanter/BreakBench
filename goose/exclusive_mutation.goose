struct Account { balance: i64 }

fn transfer(from: Account&, to: Account&, amount: i64) {
    let new_from = from.balance - amount;
    let new_to = to.balance + amount;
    from.balance = new_from;
    to.balance = new_to;
}

fn main() {
    var a = Account { balance: 100 };
    transfer(a, a, 30);
    print(a.balance);
}
