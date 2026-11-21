import std/[algorithm, strutils]

var scores = @[10, 9, 1]
scores.sort()
echo scores.join(" ")
