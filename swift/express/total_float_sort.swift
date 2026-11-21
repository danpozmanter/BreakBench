// LEVEL: STD

var xs = [3, Double.nan, 1, 2]
xs.sort { $0.isTotallyOrdered(belowOrEqualTo: $1) && !$1.isTotallyOrdered(belowOrEqualTo: $0) }
print(xs.map { $0.isNaN ? "NaN" : String(Int($0)) }.joined(separator: " "))
