let n = Int(CommandLine.arguments[1])!
var name: String
switch n {
case 1:
    name = "one"
case 2:
    name = "two"
default:
    name = "other"
}
print(name)
