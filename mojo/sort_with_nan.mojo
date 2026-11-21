from std.math import isnan, nan


def main():
    var xs: List[Float64] = [5.0, nan[DType.float64](), 3.0, 1.0, nan[DType.float64](), 4.0, 2.0]
    sort(xs)
    var prev = Float64.MIN
    var ordered = True
    for x in xs:
        if isnan(x):
            continue
        if x < prev:
            ordered = False
        prev = x
    print("ordered" if ordered else "unordered")
