// LEVEL: STD

import Foundation

FileHandle.standardOutput.write("before\n".data(using: .utf8)!)
assert(CommandLine.arguments.count + 1 == 3)
print("after")
