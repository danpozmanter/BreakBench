type
  Shape = ref object of RootObj
  Circle = ref object of Shape

method describe(s: Shape): string {.base.} = "shape"
method descibe(c: Circle): string = "circle" # CONTROL! method describe(c: Circle): string = "circle"

let s: Shape = Circle()
echo s.describe()
