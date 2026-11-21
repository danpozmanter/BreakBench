// LEVEL: PROJECT

import Collections

var d = Deque<Int>()
d.append(1)
d.prepend(0)
d.append(2)
let front = d.removeFirst()
let back = d.removeLast()
print(front, back)
