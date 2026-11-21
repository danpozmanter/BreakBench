// LEVEL: PROJECT

import Collections

var q = Heap([3, 1, 2])
var got: [String] = []
while let v = q.popMin() { got.append(String(v)) }
print(got.joined(separator: " "))
