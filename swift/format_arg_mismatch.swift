import Foundation

let done = 3
let total = 5
_ = total // BREAK!
print(String(format: "%d of %d", done)) // CONTROL! print(String(format: "%d of %d", done, total))
