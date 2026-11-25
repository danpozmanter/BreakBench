var passes = 0
var i: UInt8 = 0 // BREAK!
// CONTROL! var i: UInt16 = 0
while i < 300 {
    passes += 1
    i += 1
}
print(passes)
