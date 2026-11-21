// LEVEL: STD

import Foundation

let x = Double.nan
print(Int64(exactly: x) == nil ? "does not fit" : "fits")
