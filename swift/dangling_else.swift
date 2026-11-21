let a = Int(CommandLine.arguments[1])! != 0
let b = true
var r = "unset"
if a {
    if b { r = "both" }
} else {
    r = "not a"
}
print(r)
