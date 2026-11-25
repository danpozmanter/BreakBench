import std/sequtils

var grid = newSeqWith(3, newSeq[int](3))
grid[0][0] = 1
echo grid.mapIt(it.count(1)).foldl(a + b)
