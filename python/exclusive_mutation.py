class Account:
    def __init__(self, balance: int) -> None:
        self.balance = balance


def transfer(src: Account, dst: Account, amount: int) -> None:
    # CONTROL! if src is dst: return
    new_from = src.balance - amount
    new_to = dst.balance + amount
    src.balance = new_from
    dst.balance = new_to


a = Account(100)
transfer(a, a, 30)
print(a.balance)
