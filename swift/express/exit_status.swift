// LEVEL: STD

import Foundation

let p = Process()
p.executableURL = URL(fileURLWithPath: "/bin/false")
try p.run()
p.waitUntilExit()
print(p.terminationStatus)
