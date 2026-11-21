def show(f: Float64):
    print(f)


def main():
    var n: Int64 = 7
    show(Float64(n))
    show(n) # BREAK!
