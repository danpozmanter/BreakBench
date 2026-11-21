struct Account {
mut:
	balance int
}

fn main() {
	mut accounts := [Account{
		balance: 100
	}]
	for acct in accounts {
		acct.balance += 50 // BREAK!
	}
	println(accounts[0].balance)
}
