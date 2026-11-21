let qty: Int? = Int(CommandLine.arguments[1])
var present = false
if qty { present = true } // BREAK!
// CONTROL! if qty != nil { present = true }
if present {
    print("have \(qty!)")
} else {
    print("missing")
}
