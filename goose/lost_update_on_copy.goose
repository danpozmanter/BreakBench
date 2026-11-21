struct Account { balance: i64 }

fn main() {
    var accounts: Account[>..] = [];
    accounts.push(Account { balance: 100 });
    for acct in accounts {
        acct.balance += 50; // BREAK!
    }
    print(accounts[0].balance);
}
