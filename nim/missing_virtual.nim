type
  Shape = ref object of RootObj
  Square = ref object of Shape

proc area(s: Shape): int = 0 # CONTROL! method area(s: Shape): int {.base.} = 0
proc describe(s: Shape): string = "area " & $s.area
proc area(s: Square): int = 4 # CONTROL! method area(s: Square): int = 4

echo Square().describe
