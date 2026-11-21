# LEVEL: LANGUAGE

def main():
    var i: Int64 = -1
    var n: UInt64 = 3
    print(i < n)  # REJECT!
    print("less" if i < Int64(n) else "not less")
