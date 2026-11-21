struct Account {
mut:
	balance int
}

fn transfer(mut from Account, mut to Account, amount int) {
	new_from := from.balance - amount
	new_to := to.balance + amount
	from.balance = new_from
	to.balance = new_to
}

fn main() {
	mut a := Account{
		balance: 100
	}
	transfer(mut a, mut a, 30)
	println(a.balance)
}
