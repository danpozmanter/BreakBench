def deposit(mut balance: Int, amount: Int):
    balance += amount


def main():
    var balance = 0
    deposit(balance, 10)
    print("done")
