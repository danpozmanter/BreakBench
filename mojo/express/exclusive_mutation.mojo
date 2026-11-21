# LEVEL: LANGUAGE

def transfer(mut source: Int, mut target: Int, amount: Int):
    source -= amount
    target += amount


def main():
    var a = 100
    var b = 0
    transfer(a, b, 30)
    transfer(a, a, 10)  # REJECT!
    print(a, b)
