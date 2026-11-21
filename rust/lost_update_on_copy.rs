struct Account {
    balance: i64,
}

fn main() {
    let mut accounts = vec![Account { balance: 100 }];
    for acct in accounts { acct.balance += 50; } // BREAK!
    // CONTROL! for acct in accounts.iter_mut() { acct.balance += 50; }
    println!("{}", accounts[0].balance);
}
