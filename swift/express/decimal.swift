// LEVEL: STD

import Foundation

let a = Decimal(string: "0.1")! + Decimal(string: "0.2")!
print(a == Decimal(string: "0.3")! ? "equal" : "not equal")
