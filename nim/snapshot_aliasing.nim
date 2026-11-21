proc applyUpdate(weights: var seq[int]) =
  weights[1] = 5
  weights[3] = 0

var weights = @[3, 3, 3, 3]
let before = weights
applyUpdate(weights)
var changes = 0
for i in 0 ..< weights.len:
  if before[i] != weights[i]: inc changes
echo changes
