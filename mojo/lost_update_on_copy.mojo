@fieldwise_init
struct Account(Copyable, Movable):
    var balance: Int


def main():
    var accounts: List[Account] = [Account(100)]
    for acct in accounts:
        acct.balance += 50  # BREAK!
        # CONTROL! pass
    print(accounts[0].balance)
