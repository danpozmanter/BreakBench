class Account:
    def __init__(self, balance):
        self.balance = balance


def transfer(src, dst, amount):
    new_from = src.balance - amount
    new_to = dst.balance + amount
    src.balance = new_from
    dst.balance = new_to


a = Account(100)
transfer(a, a, 30)
print(a.balance)
